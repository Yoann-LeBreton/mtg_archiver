// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLocalCardHash() => r'f432f16fe2c2b8d5c12c7beed7b8d668a4a2bc36';

/// See also [getLocalCard].
@ProviderFor(getLocalCard)
final getLocalCardProvider =
    AutoDisposeFutureProvider<List<CardEntity>>.internal(
  getLocalCard,
  name: r'getLocalCardProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getLocalCardHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLocalCardRef = AutoDisposeFutureProviderRef<List<CardEntity>>;
String _$saveLocalCardHash() => r'cd57203d0eb317f2dfdd8374c094db273cdc5b81';

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

/// See also [saveLocalCard].
@ProviderFor(saveLocalCard)
const saveLocalCardProvider = SaveLocalCardFamily();

/// See also [saveLocalCard].
class SaveLocalCardFamily extends Family<AsyncValue<void>> {
  /// See also [saveLocalCard].
  const SaveLocalCardFamily();

  /// See also [saveLocalCard].
  SaveLocalCardProvider call(
    CardEntity card,
  ) {
    return SaveLocalCardProvider(
      card,
    );
  }

  @override
  SaveLocalCardProvider getProviderOverride(
    covariant SaveLocalCardProvider provider,
  ) {
    return call(
      provider.card,
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
  String? get name => r'saveLocalCardProvider';
}

/// See also [saveLocalCard].
class SaveLocalCardProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveLocalCard].
  SaveLocalCardProvider(
    CardEntity card,
  ) : this._internal(
          (ref) => saveLocalCard(
            ref as SaveLocalCardRef,
            card,
          ),
          from: saveLocalCardProvider,
          name: r'saveLocalCardProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveLocalCardHash,
          dependencies: SaveLocalCardFamily._dependencies,
          allTransitiveDependencies:
              SaveLocalCardFamily._allTransitiveDependencies,
          card: card,
        );

  SaveLocalCardProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.card,
  }) : super.internal();

  final CardEntity card;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveLocalCardRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveLocalCardProvider._internal(
        (ref) => create(ref as SaveLocalCardRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        card: card,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveLocalCardProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveLocalCardProvider && other.card == card;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, card.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveLocalCardRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `card` of this provider.
  CardEntity get card;
}

class _SaveLocalCardProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveLocalCardRef {
  _SaveLocalCardProviderElement(super.provider);

  @override
  CardEntity get card => (origin as SaveLocalCardProvider).card;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
