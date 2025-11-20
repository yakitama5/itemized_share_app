import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:itemized_share_app/app/features/error/pages/error_page.dart';
import 'package:itemized_share_app/app/features/maintenance/pages/maintenance_page.dart';
import 'package:itemized_share_app/app/features/task/pages/tasks_page.dart';

part 'routes_data.g.dart';

@TypedGoRoute<TasksRoute>(path: TasksRoute.path)
final class TasksRoute extends GoRouteData with $TasksRoute {
  const TasksRoute();

  static const path = '/tasks';

  @override
  Widget build(BuildContext context, GoRouterState state) => const TasksPage();
}

@TypedGoRoute<MaintenanceRoute>(path: MaintenanceRoute.path)
final class MaintenanceRoute extends GoRouteData with $MaintenanceRoute {
  const MaintenanceRoute();

  static const path = '/maintenance';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MaintenancePage();
}

@TypedGoRoute<ErrorRoute>(path: ErrorRoute.path)
final class ErrorRoute extends GoRouteData with $ErrorRoute {
  const ErrorRoute();

  static const path = '/error';

  @override
  Widget build(BuildContext context, GoRouterState state) => const ErrorPage();
}
