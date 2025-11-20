import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:itemized_share_app/app/core/extension/enum_extension.dart';
import 'package:itemized_share_app/app/core/firebase/config/firebase_options.dart';
import 'package:itemized_share_app/app/core/firebase/config/firebase_options_dev.dart'
    as dev;
import 'package:itemized_share_app/app/core/model/app_build_config.dart';
import 'package:itemized_share_app/app/core/model/flavor.dart';
import 'package:itemized_share_app/app/core/utils/logger.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:version/version.dart';

typedef InitializedValues = ({AppBuildConfig buildConfig});

final class AppInitializer {
  AppInitializer._();

  static Future<InitializedValues> initialize() async {
    // Flutter Initialize
    WidgetsFlutterBinding.ensureInitialized();

    // Build Config
    final buildConfig = await _initializeBuildConfig();
    logger.i(buildConfig);

    // Firebase
    await _initilizeFirebase(buildConfig.flavor);

    return (buildConfig: buildConfig);
  }

  /// AppBuildConfigの取得
  static Future<AppBuildConfig> _initializeBuildConfig() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return AppBuildConfig(
      flavor:
          Flavor.values.byNameOrNull(const String.fromEnvironment('flavor')) ??
          Flavor.dev,
      appName: packageInfo.appName,
      packageName: packageInfo.packageName,
      version: Version.parse(packageInfo.version),
      buildNumber: packageInfo.buildNumber,
      buildSignature: packageInfo.buildSignature,
      installerStore: packageInfo.installerStore,
    );
  }

  /// FirebaseInitializer
  static Future<void> _initilizeFirebase(Flavor flavor) async {
    // Flavor に応じた FirebaseOptions を準備する
    final firebaseOptions = switch (flavor) {
      Flavor.dev => dev.DefaultFirebaseOptions.currentPlatform,
      Flavor.prod => DefaultFirebaseOptions.currentPlatform,
    };

    // Firebase core
    await Firebase.initializeApp(options: firebaseOptions);

    // App Check
    await FirebaseAppCheck.instance.activate(
      providerAndroid: switch (flavor) {
        Flavor.prod => AndroidPlayIntegrityProvider(),
        Flavor.dev => AndroidDebugProvider(),
      },
      providerApple: switch (flavor) {
        Flavor.prod => AppleDeviceCheckProvider(),
        Flavor.dev => AppleDebugProvider(),
      },
    );

    // Firebase Crashlytics
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }
}
