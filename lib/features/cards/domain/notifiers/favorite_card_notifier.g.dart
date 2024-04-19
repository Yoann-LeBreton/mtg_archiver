// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_card_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$favoriteCardNotifHash() => r'8816b12dad40e0191a3cbb613fc0df63b0a064f6';

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

abstract class _$FavoriteCardNotif extends BuildlessAutoDisposeNotifier<bool> {
  late final String cardId;

  bool build(
    String cardId,
  );
}

/// See also [FavoriteCardNotif].
@ProviderFor(FavoriteCardNotif)
const favoriteCardNotifProvider = FavoriteCardNotifFamily();

/// See also [FavoriteCardNotif].
class FavoriteCardNotifFamily extends Family<bool> {
  /// See also [FavoriteCardNotif].
  const FavoriteCardNotifFamily();

  /// See also [FavoriteCardNotif].
  FavoriteCardNotifProvider call(
    String cardId,
  ) {
    return FavoriteCardNotifProvider(
      cardId,
    );
  }

  @override
  FavoriteCardNotifProvider getProviderOverride(
    covariant FavoriteCardNotifProvider provider,
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
  String? get name => r'favoriteCardNotifProvider';
}

/// See also [FavoriteCardNotif].
class FavoriteCardNotifProvider
    extends AutoDisposeNotifierProviderImpl<FavoriteCardNotif, bool> {
  /// See also [FavoriteCardNotif].
  FavoriteCardNotifProvider(
    String cardId,
  ) : this._internal(
          () => FavoriteCardNotif()..cardId = cardId,
          from: favoriteCardNotifProvider,
          name: r'favoriteCardNotifProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$favoriteCardNotifHash,
          dependencies: FavoriteCardNotifFamily._dependencies,
          allTransitiveDependencies:
              FavoriteCardNotifFamily._allTransitiveDependencies,
          cardId: cardId,
        );

  FavoriteCardNotifProvider._internal(
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
  bool runNotifierBuild(
    covariant FavoriteCardNotif notifier,
  ) {
    return notifier.build(
      cardId,
    );
  }

  @override
  Override overrideWith(FavoriteCardNotif Function() create) {
    return ProviderOverride(
      origin: this,
      override: FavoriteCardNotifProvider._internal(
        () => create()..cardId = cardId,
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
  AutoDisposeNotifierProviderElement<FavoriteCardNotif, bool> createElement() {
    return _FavoriteCardNotifProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FavoriteCardNotifProvider && other.cardId == cardId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cardId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FavoriteCardNotifRef on AutoDisposeNotifierProviderRef<bool> {
  /// The parameter `cardId` of this provider.
  String get cardId;
}

class _FavoriteCardNotifProviderElement
    extends AutoDisposeNotifierProviderElement<FavoriteCardNotif, bool>
    with FavoriteCardNotifRef {
  _FavoriteCardNotifProviderElement(super.provider);

  @override
  String get cardId => (origin as FavoriteCardNotifProvider).cardId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
