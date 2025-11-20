import 'package:itemized_share_app/app/features/upgrader/state/app_version_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:version/version.dart';

part 'force_update_version_provider.g.dart';

@riverpod
Stream<Version> forceUpdateVersion(Ref ref) =>
    ref.watch(appVersionRepositoryProvider).listenForceUpdateAppVersion();
