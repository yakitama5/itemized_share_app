import 'package:itemized_share_app/app/features/upgrader/repository/app_version_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_version_repository_provider.g.dart';

@Riverpod(keepAlive: true)
AppVersionRepository appVersionRepository(Ref ref) => AppVersionRepository(ref);
