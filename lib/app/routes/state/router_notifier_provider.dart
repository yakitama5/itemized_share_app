import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itemized_share_app/app/features/maintenance/enum/app_maintenance_status.dart';
import 'package:itemized_share_app/app/features/maintenance/state/app_maintenance_status_provider.dart';
import 'package:itemized_share_app/app/routes/routes/routes_data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier_provider.g.dart';

@riverpod
final class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  List<RouteBase> get routes => $appRoutes;

  @override
  Future<void> build() async {
    listenSelf((previous, next) {
      if (state.isLoading) {
        return;
      }

      routerListener?.call();
    });
  }

  Future<String?> redirect(
    BuildContext context,
    GoRouterState routeState,
  ) async {
    if (state.isLoading || state.hasError) {
      return null;
    }
    final location = routeState.fullPath ?? '';

    // メンテナンス判定
    final maintenanceStatus = ref.watch(appMaintenanceStatusProvider).value;
    switch (maintenanceStatus) {
      case AppMaintenanceStatus.maintenance:
        if (!location.contains(MaintenanceRoute.path)) {
          return MaintenanceRoute.path;
        }
      case null:
      case AppMaintenanceStatus.none:
      // do nothing
    }

    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
