import 'package:itemized_share_app/app/core/firebase/enum/remote_configs.dart';
import 'package:itemized_share_app/app/core/firebase/state/remote_config_provider.dart';
import 'package:riverpod/riverpod.dart';

/// アプリのメンテナンスモードを取得するRepository
final class AppMaintenanceRepository {
  const AppMaintenanceRepository(this.ref);

  final Ref ref;

  Future<bool> fetchMaintenanceMode() async {
    final remoteConfig = await ref.watch(remoteConfigProvider.future);
    return remoteConfig.getBool(RemoteConfigs.maintenance.key);
  }

  Stream<bool> listenMaintenanceMode() async* {
    final value = await ref.watch(
      boolStreamConfigProvider(config: RemoteConfigs.maintenance).future,
    );
    yield value;
  }
}
