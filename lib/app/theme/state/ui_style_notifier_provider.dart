import 'dart:async';

import 'package:itemized_share_app/app/theme/enum/ui_style.dart';
import 'package:itemized_share_app/app/theme/repository/theme_repository.dart';
import 'package:itemized_share_app/app/theme/state/theme_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_style_notifier_provider.g.dart';

/// UIスタイルを管理するProvider
/// SharedPreferencesの同期を待たずにUIに反映するため、Notifierを利用している
@riverpod
final class UiStyleNotifier extends _$UiStyleNotifier {
  ThemeRepository get _repository => ref.watch(themeRepositoryProvider);

  @override
  UIStyle build() {
    final uiStyle = _repository.fetchUIStyle();

    // 初期値は「システム設定」
    return uiStyle ?? UIStyle.system;
  }

  Future<void> update(UIStyle uiStyle) async {
    // 設定反映を待たずに設定する
    unawaited(_repository.updateUIStyle(uiStyle));
    state = uiStyle;
  }
}
