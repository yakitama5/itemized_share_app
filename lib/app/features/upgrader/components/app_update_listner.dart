import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itemized_share_app/app/core/components/components.dart';
import 'package:itemized_share_app/app/core/state/app_build_config_provider.dart';
import 'package:itemized_share_app/app/features/upgrader/enum/app_update_status.dart';
import 'package:itemized_share_app/app/features/upgrader/state/app_update_status_provider.dart';
import 'package:itemized_share_app/app/routes/key/root_navigator_key.dart';
import 'package:itemized_share_app/i18n/strings.g.dart';
import 'package:nested/nested.dart';
import 'package:store_redirect/store_redirect.dart';

final class AppUpdateListner extends SingleChildStatelessWidget {
  const AppUpdateListner({super.key, super.child});

  @override
  Widget buildWithChild(BuildContext context, Widget? child) => Consumer(
    child: child,
    builder: (_, ref, child) {
      ref.listen(appUpdateStatusProvider, (_, snapshot) async {
        // 共通Widgetのため、呼び出し元によらずRootを利用する
        final rootContext = rootNavigatorKey.currentContext;
        if (!snapshot.hasValue || rootContext == null || !rootContext.mounted) {
          return;
        }

        final status = snapshot.value;
        switch (status) {
          case AppUpdateStatus.updateRequired:
            final messages = i18n.upgrader.common.forceUpdateDialog;
            await showOkBarrierDismissibleDialog(
              rootContext,
              message: messages.message,
              okLabel: messages.navigateToStore,
              onOk: () => navigateToStore(ref),
            );
          case AppUpdateStatus.updatePossible:
            final messages = i18n.upgrader.common.updatePossibleDialog;
            final result = await showOkCancelAlertDialog(
              context: rootContext,
              message: messages.message,
              okLabel: messages.navigateToStore,
            );
            return switch (result) {
              OkCancelResult.ok => navigateToStore(ref),
              OkCancelResult.cancel => null,
            };
          case AppUpdateStatus.usingLatest:
          case null:
          // do nothing
        }
      });

      return child ?? const SizedBox.shrink();
    },
  );

  /// ストアページへ遷移する.
  Future<void> navigateToStore(WidgetRef ref) async {
    final appBuildConfig = ref.read(appBuildConfigProvider);

    return StoreRedirect.redirect(
      androidAppId: appBuildConfig.packageName,
      iOSAppId: appBuildConfig.packageName,
    );
  }
}
