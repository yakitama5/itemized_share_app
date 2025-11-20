import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itemized_share_app/app/app.dart';
import 'package:itemized_share_app/app/core/app_initializer.dart';
import 'package:itemized_share_app/app/core/shared_preferences/state/shared_preferences_provider.dart';
import 'package:itemized_share_app/app/core/state/app_build_config_provider.dart';
import 'package:itemized_share_app/app/routes/state/initial_location_provider.dart';
import 'package:itemized_share_app/i18n/strings.g.dart';
import 'package:nested/nested.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // アプリの初期処理
  final initializedResult = await AppInitializer.initialize();

  runApp(
    ProviderScope(
      overrides: [
        initialLocationProvider.overrideWithValue(null),

        // 起動時に取得したアプリの基本情報を設定
        appBuildConfigProvider.overrideWithValue(initializedResult.buildConfig),

        // SharedPreferencesの初期化(起動時に同期)
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        ),
      ],
      child: Nested(
        children: const [
          // Slangの伝播
          _AppTranslationProvider(),
        ],
        child: const App(),
      ),
    ),
  );
}

final class _AppTranslationProvider extends SingleChildStatelessWidget {
  const _AppTranslationProvider();

  @override
  Widget buildWithChild(BuildContext context, Widget? child) =>
      TranslationProvider(child: child ?? const SizedBox.shrink());
}
