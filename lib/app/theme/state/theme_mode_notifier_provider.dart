import 'dart:async';

import 'package:flutter/material.dart';
import 'package:itemized_share_app/app/theme/enum/app_theme_mode.dart';
import 'package:itemized_share_app/app/theme/repository/theme_repository.dart';
import 'package:itemized_share_app/app/theme/state/theme_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode_notifier_provider.g.dart';

/// テーマを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
final class ThemeModeNotifier extends _$ThemeModeNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  /// 初期状態はシステム
  @override
  ThemeMode build() =>
      _repository.fetchThemeMode()?.themeMode ?? AppThemeMode.system.themeMode;

  Future<void> update(ThemeMode themeMode) async {
    final appThemeMode = switch (themeMode) {
      ThemeMode.system => AppThemeMode.system,
      ThemeMode.light => AppThemeMode.light,
      ThemeMode.dark => AppThemeMode.dark,
    };

    // 設定反映を待たずに設定する
    unawaited(_repository.updateThemeMode(appThemeMode));
    state = themeMode;
  }
}
