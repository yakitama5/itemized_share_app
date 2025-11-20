import 'package:itemized_share_app/app/features/maintenance/repository/app_maintenance_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_repository_provider.g.dart';

@Riverpod(keepAlive: true)
AppMaintenanceRepository appMaintenanceRepository(Ref ref) =>
    AppMaintenanceRepository(ref);
