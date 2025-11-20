import 'dart:async';

import 'package:itemized_share_app/app/theme/enum/theme_color.dart';
import 'package:itemized_share_app/app/theme/repository/theme_repository.dart';
import 'package:itemized_share_app/app/theme/state/theme_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_color_notifier_provider.g.dart';

/// テーマカラーを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
final class ThemeColorNotifier extends _$ThemeColorNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  @override
  ThemeColor build() {
    final themeColor = _repository.fetchThemeColor();
    const defaultValue = ThemeColor.appColor;

    return themeColor ?? defaultValue;
  }

  Future<void> update(ThemeColor themeColor) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateThemeColor(themeColor));
    state = themeColor;
  }
}
