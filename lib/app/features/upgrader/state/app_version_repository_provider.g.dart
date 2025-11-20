// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'app_version_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appVersionRepository)
const appVersionRepositoryProvider = AppVersionRepositoryProvider._();

final class AppVersionRepositoryProvider
    extends
        $FunctionalProvider<
          AppVersionRepository,
          AppVersionRepository,
          AppVersionRepository
        >
    with $Provider<AppVersionRepository> {
  const AppVersionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appVersionRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appVersionRepositoryHash();

  @$internal
  @override
  $ProviderElement<AppVersionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AppVersionRepository create(Ref ref) {
    return appVersionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppVersionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppVersionRepository>(value),
    );
  }
}

String _$appVersionRepositoryHash() =>
    r'8a8d78f57d54454021afa11f07744dd458198140';
