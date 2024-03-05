// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_mtg_cards_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchMtgCardsHash() => r'e99e14aa5d763f25eb667b08655db030c8d83c01';

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

/// See also [searchMtgCards].
@ProviderFor(searchMtgCards)
const searchMtgCardsProvider = SearchMtgCardsFamily();

/// See also [searchMtgCards].
class SearchMtgCardsFamily extends Family<AsyncValue<SearchCardsResultEntity>> {
  /// See also [searchMtgCards].
  const SearchMtgCardsFamily();

  /// See also [searchMtgCards].
  SearchMtgCardsProvider call({
    required String searchText,
  }) {
    return SearchMtgCardsProvider(
      searchText: searchText,
    );
  }

  @override
  SearchMtgCardsProvider getProviderOverride(
    covariant SearchMtgCardsProvider provider,
  ) {
    return call(
      searchText: provider.searchText,
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
  String? get name => r'searchMtgCardsProvider';
}

/// See also [searchMtgCards].
class SearchMtgCardsProvider
    extends AutoDisposeFutureProvider<SearchCardsResultEntity> {
  /// See also [searchMtgCards].
  SearchMtgCardsProvider({
    required String searchText,
  }) : this._internal(
          (ref) => searchMtgCards(
            ref as SearchMtgCardsRef,
            searchText: searchText,
          ),
          from: searchMtgCardsProvider,
          name: r'searchMtgCardsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchMtgCardsHash,
          dependencies: SearchMtgCardsFamily._dependencies,
          allTransitiveDependencies:
              SearchMtgCardsFamily._allTransitiveDependencies,
          searchText: searchText,
        );

  SearchMtgCardsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.searchText,
  }) : super.internal();

  final String searchText;

  @override
  Override overrideWith(
    FutureOr<SearchCardsResultEntity> Function(SearchMtgCardsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchMtgCardsProvider._internal(
        (ref) => create(ref as SearchMtgCardsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        searchText: searchText,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SearchCardsResultEntity> createElement() {
    return _SearchMtgCardsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchMtgCardsProvider && other.searchText == searchText;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, searchText.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchMtgCardsRef
    on AutoDisposeFutureProviderRef<SearchCardsResultEntity> {
  /// The parameter `searchText` of this provider.
  String get searchText;
}

class _SearchMtgCardsProviderElement
    extends AutoDisposeFutureProviderElement<SearchCardsResultEntity>
    with SearchMtgCardsRef {
  _SearchMtgCardsProviderElement(super.provider);

  @override
  String get searchText => (origin as SearchMtgCardsProvider).searchText;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
