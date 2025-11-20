// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'theme_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(themeRepository)
const themeRepositoryProvider = ThemeRepositoryProvider._();

final class ThemeRepositoryProvider
    extends
        $FunctionalProvider<ThemeRepository, ThemeRepository, ThemeRepository>
    with $Provider<ThemeRepository> {
  const ThemeRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeRepositoryHash();

  @$internal
  @override
  $ProviderElement<ThemeRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeRepository create(Ref ref) {
    return themeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeRepository>(value),
    );
  }
}

String _$themeRepositoryHash() => r'1069654a069b947cb6ee484aa0c6ff62f2cbcc49';
