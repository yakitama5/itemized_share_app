// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'routes_data.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$tasksRoute, $maintenanceRoute, $errorRoute];

RouteBase get $tasksRoute =>
    GoRouteData.$route(path: '/tasks', factory: $TasksRoute._fromState);

mixin $TasksRoute on GoRouteData {
  static TasksRoute _fromState(GoRouterState state) => const TasksRoute();

  @override
  String get location => GoRouteData.$location('/tasks');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $maintenanceRoute => GoRouteData.$route(
  path: '/maintenance',
  factory: $MaintenanceRoute._fromState,
);

mixin $MaintenanceRoute on GoRouteData {
  static MaintenanceRoute _fromState(GoRouterState state) =>
      const MaintenanceRoute();

  @override
  String get location => GoRouteData.$location('/maintenance');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorRoute =>
    GoRouteData.$route(path: '/error', factory: $ErrorRoute._fromState);

mixin $ErrorRoute on GoRouteData {
  static ErrorRoute _fromState(GoRouterState state) => const ErrorRoute();

  @override
  String get location => GoRouteData.$location('/error');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
