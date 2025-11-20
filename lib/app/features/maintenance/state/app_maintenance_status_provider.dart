import 'package:itemized_share_app/app/features/maintenance/enum/app_maintenance_status.dart';
import 'package:itemized_share_app/app/features/maintenance/state/app_maintenance_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_maintenance_status_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AppMaintenanceStatus> appMaintenanceStatus(Ref ref) {
  final repository = ref.watch(appMaintenanceRepositoryProvider);
  return repository.listenMaintenanceMode().map(
    (isMaintenance) => isMaintenance
        ? AppMaintenanceStatus.maintenance
        : AppMaintenanceStatus.none,
  );
}
