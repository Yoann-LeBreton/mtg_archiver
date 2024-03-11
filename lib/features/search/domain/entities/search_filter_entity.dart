class SearchFilterEntity {
  const SearchFilterEntity({
    this.showOtherTypes = false,
    this.showMultiLingual = false,
    this.sortMode = SortMode.auto,
    this.sortType = SortType.name,
  });

  final bool showOtherTypes;
  final bool showMultiLingual;
  final SortMode sortMode;
  final SortType sortType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SearchFilterEntity &&
          runtimeType == other.runtimeType &&
          showOtherTypes == other.showOtherTypes &&
          showMultiLingual == other.showMultiLingual &&
          sortMode == other.sortMode &&
          sortType == other.sortType);

  @override
  int get hashCode =>
      showOtherTypes.hashCode ^
      showMultiLingual.hashCode ^
      sortMode.hashCode ^
      sortType.hashCode;

  SearchFilterEntity copyWith({
    bool? showOtherTypes,
    bool? showMultiLingual,
    SortMode? sortMode,
    SortType? sortType,
  }) {
    return SearchFilterEntity(
      showOtherTypes: showOtherTypes ?? this.showOtherTypes,
      showMultiLingual: showMultiLingual ?? this.showMultiLingual,
      sortMode: sortMode ?? this.sortMode,
      sortType: sortType ?? this.sortType,
    );
  }
}

enum SortMode {
  auto,
  asc,
  desc,
}

enum SortType {
  name,
  release,
  rarity,
  color,
}
