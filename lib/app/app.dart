import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itemized_share_app/app/core/components/src/loader_overlay.dart';
import 'package:itemized_share_app/app/core/components/src/responsive_auto_scale_box.dart';
import 'package:itemized_share_app/app/core/components/src/snack_bar_manager.dart';
import 'package:itemized_share_app/app/core/state/app_build_config_provider.dart';
import 'package:itemized_share_app/app/features/upgrader/components/app_update_listner.dart';
import 'package:itemized_share_app/app/routes/state/go_router_provider.dart';
import 'package:itemized_share_app/app/theme/state/app_theme_provider.dart';
import 'package:itemized_share_app/app/theme/state/theme_mode_notifier_provider.dart';
import 'package:itemized_share_app/i18n/strings.g.dart';
import 'package:nested/nested.dart';

final class App extends ConsumerWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // アプリの共通情報
    final appBuildConfig = ref.watch(appBuildConfigProvider);

    // テーマ設定
    final themeMode = ref.watch(themeModeProvider);
    final lightTheme = ref.watch(
      appThemeProvider(brightness: Brightness.light),
    );
    final darkTheme = ref.watch(appThemeProvider(brightness: Brightness.dark));

    return MaterialApp.router(
      title: appBuildConfig.appName,
      builder: (_, child) => Nested(
        children: const [
          ResponsiveAutoScaleBox(),
          LoaderOverlay(),
          AppUpdateListner(),
        ],
        child: child,
      ),
      scrollBehavior: ScrollConfiguration.of(
        context,
      ).copyWith(physics: const BouncingScrollPhysics()),

      // Router
      routerConfig: ref.watch(goRouterProvider),

      // Slang
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,

      scaffoldMessengerKey: SnackBarManager.rootScaffoldMessengerKey,

      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeMode,
    );
  }
}
