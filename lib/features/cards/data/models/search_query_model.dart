class SearchQueryModel {
  const SearchQueryModel({
    required this.searchText,
    required this.numPage,
    this.includeMultiLingual = false,
    this.showOtherType = false,
    this.order,
    this.sortDirection,
  });

  final String searchText;
  final String? order;
  final String? sortDirection;
  final bool showOtherType;
  final bool includeMultiLingual;
  final int numPage;
}
