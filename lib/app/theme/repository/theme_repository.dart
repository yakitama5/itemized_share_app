import 'package:collection/collection.dart';
import 'package:itemized_share_app/app/core/shared_preferences/enum/preferences.dart';
import 'package:itemized_share_app/app/core/shared_preferences/state/preferences_notifier_provider.dart';
import 'package:itemized_share_app/app/theme/enum/app_theme_mode.dart';
import 'package:itemized_share_app/app/theme/enum/theme_color.dart';
import 'package:itemized_share_app/app/theme/enum/ui_style.dart';
import 'package:riverpod/riverpod.dart';

final class ThemeRepository {
  const ThemeRepository(this.ref);

  final Ref ref;

  ThemeColor? fetchThemeColor() {
    final value = ref.watch(stringPreferenceProvider(Preferences.themeColor));
    return ThemeColor.values.firstWhereOrNull((e) => e.name == value);
  }

  UIStyle? fetchUIStyle() {
    final value = ref.watch(stringPreferenceProvider(Preferences.uiStyle));
    return UIStyle.values.firstWhereOrNull((e) => e.name == value);
  }

  AppThemeMode? fetchThemeMode() {
    final value = ref.watch(stringPreferenceProvider(Preferences.themeMode));
    return AppThemeMode.values.firstWhereOrNull((e) => e.name == value);
  }

  Future<void> updateThemeColor(ThemeColor themeColor) => ref
      .read(stringPreferenceProvider(Preferences.themeColor).notifier)
      .update(themeColor.name);

  Future<void> updateUIStyle(UIStyle uiStyle) => ref
      .read(stringPreferenceProvider(Preferences.uiStyle).notifier)
      .update(uiStyle.name);

  Future<void> updateThemeMode(AppThemeMode themeMode) => ref
      .read(stringPreferenceProvider(Preferences.themeMode).notifier)
      .update(themeMode.name);
}
