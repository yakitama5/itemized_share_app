import 'package:go_router/go_router.dart';
import 'package:itemized_share_app/app/features/error/pages/error_page.dart';
import 'package:itemized_share_app/app/routes/key/root_navigator_key.dart';
import 'package:itemized_share_app/app/routes/state/initial_location_provider.dart';
import 'package:itemized_share_app/app/routes/state/router_notifier_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router_provider.g.dart';

@riverpod
GoRouter goRouter(Ref ref) {
  final router = ref.watch(routerProvider.notifier);
  final initialLocation = ref.watch(initialLocationProvider);

  return GoRouter(
    navigatorKey: rootNavigatorKey,
    routes: router.routes,
    initialLocation: initialLocation,
    redirect: router.redirect,
    errorBuilder: (_, state) => ErrorPage(exception: state.error),

    // ログイン状態やデータの変更でredirectを検知するように、`refreshListenable`を設定
    refreshListenable: router,
  );
}
