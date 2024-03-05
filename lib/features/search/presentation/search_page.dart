import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/features/search/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/search/domain/providers/search_mtg_cards_provider.dart';

class SearchPage extends ConsumerStatefulWidget {
  const SearchPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<SearchCardsResultEntity> searchState =
        ref.watch(searchMtgCardsProvider(searchText: 'orc'));
    return searchState.when(
      data: (SearchCardsResultEntity result) => ListView.builder(
        itemCount: result.results.length,
        itemBuilder: (BuildContext context, int index) =>
            Text(result.results[index].name),
      ),
      error: (_, __) => Container(),
      loading: LoadingWidget.new,
    );
  }
}
