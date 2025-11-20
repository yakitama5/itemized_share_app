import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:itemized_share_app/app/core/firebase/enum/remote_configs.dart';
import 'package:itemized_share_app/app/core/firebase/state/remote_config_provider.dart';
import 'package:version/version.dart';

/// AppVersion
final class AppVersionRepository {
  const AppVersionRepository(this.ref);

  final Ref ref;

  Stream<Version> listenForceUpdateAppVersion() =>
      _listenVersion(RemoteConfigs.forceUpdateAppVersion);

  Stream<Version> listenLatestAppVersion() =>
      _listenVersion(RemoteConfigs.latestAppVersion);

  /// バージョンを取得する
  Stream<Version> _listenVersion(RemoteConfigs<String> config) async* {
    // HACK(yakitama5): RemoteConfigの値をStreamで取得する箇所でエラーが頻発する、原因調査
    final value = await ref.watch(
      stringStreamConfigProvider(config: config).future,
    );
    yield Version.parse(value);
  }
}
