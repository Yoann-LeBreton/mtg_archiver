import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_filter_entity.dart';

final StateProvider<SearchFilterEntity> searchProvider =
    StateProvider<SearchFilterEntity>(
  (StateProviderRef<SearchFilterEntity> ref) =>
      SearchFilterEntity.initialValues(),
);
