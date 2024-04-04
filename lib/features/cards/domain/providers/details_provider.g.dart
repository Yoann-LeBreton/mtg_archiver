// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailsHash() => r'b256b750f4b42c52c8233b1e1fed91690cc1c0c0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [details].
@ProviderFor(details)
const detailsProvider = DetailsFamily();

/// See also [details].
class DetailsFamily extends Family<AsyncValue<CardEntity>> {
  /// See also [details].
  const DetailsFamily();

  /// See also [details].
  DetailsProvider call(
    String cardId,
  ) {
    return DetailsProvider(
      cardId,
    );
  }

  @override
  DetailsProvider getProviderOverride(
    covariant DetailsProvider provider,
  ) {
    return call(
      provider.cardId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailsProvider';
}

/// See also [details].
class DetailsProvider extends AutoDisposeFutureProvider<CardEntity> {
  /// See also [details].
  DetailsProvider(
    String cardId,
  ) : this._internal(
          (ref) => details(
            ref as DetailsRef,
            cardId,
          ),
          from: detailsProvider,
          name: r'detailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$detailsHash,
          dependencies: DetailsFamily._dependencies,
          allTransitiveDependencies: DetailsFamily._allTransitiveDependencies,
          cardId: cardId,
        );

  DetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cardId,
  }) : super.internal();

  final String cardId;

  @override
  Override overrideWith(
    FutureOr<CardEntity> Function(DetailsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DetailsProvider._internal(
        (ref) => create(ref as DetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cardId: cardId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<CardEntity> createElement() {
    return _DetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailsProvider && other.cardId == cardId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cardId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DetailsRef on AutoDisposeFutureProviderRef<CardEntity> {
  /// The parameter `cardId` of this provider.
  String get cardId;
}

class _DetailsProviderElement
    extends AutoDisposeFutureProviderElement<CardEntity> with DetailsRef {
  _DetailsProviderElement(super.provider);

  @override
  String get cardId => (origin as DetailsProvider).cardId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
