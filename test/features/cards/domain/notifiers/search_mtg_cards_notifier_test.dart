import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/core/error/exceptions.dart';
import 'package:mtg_archiver/features/cards/data/models/search_cards_result_model.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_cards_result_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/search_filter_entity.dart';
import 'package:mtg_archiver/features/cards/domain/notifiers/search_mtg_cards_notifier.dart';
import 'package:mtg_archiver/features/cards/domain/notifiers/search_mtg_state.dart';
import 'package:mtg_archiver/features/cards/domain/providers/search_provider.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockMtgRepository extends Mock implements MtgRepository {}

void main() {
  final MockMtgRepository mockMtgRepository = MockMtgRepository();
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: <Override>[
        mtgRepositoryProvider.overrideWithValue(mockMtgRepository),
        searchProvider.overrideWith(
          (StateProviderRef<SearchFilterEntity> ref) =>
              const SearchFilterEntity(textSearch: 'master'),
        ),
      ],
    );
    addTearDown(container.dispose);
  });

  group('provider search cards first page', () {
    final dynamic jsonData = fixture('features/cards/cards_page_1.json');
    final SearchCardsResultEntity entity =
        SearchCardsResultModel.fromJson(jsonDecode(jsonData)).toDomain();

    test('success - search first page ', () async {
      final SearchFilterEntity searchInfos = container.read(searchProvider);
      when(
        () => mockMtgRepository.searchByName(
          searchText: searchInfos.textSearch,
          numPage: 1,
          includeMultiLingual: searchInfos.showMultiLingual,
          showOtherType: searchInfos.showOtherTypes,
          order: searchInfos.sortType.name,
          sortDirection: searchInfos.sortMode.name,
        ),
      ).thenAnswer(
        (_) => Future<Result<SearchCardsResultEntity>>.value(
          Result<SearchCardsResultEntity>.success(data: entity),
        ),
      );

      expect(
        container.read(searchMtgCardsNotifProvider),
        const SearchMtgState.initial(numPage: 0, hasMore: true),
      );
      await container
          .read(searchMtgCardsNotifProvider.notifier)
          .searchMtgCards();
      expect(
        container.read(searchMtgCardsNotifProvider),
        SearchMtgState.success(
          numPage: 1,
          hasMore: true,
          cards: entity.results,
        ),
      );
    });

    test('failure - search first page ', () async {
      final SearchFilterEntity searchInfos = container.read(searchProvider);
      final ServerException exception = ServerException();
      when(
        () => mockMtgRepository.searchByName(
          searchText: searchInfos.textSearch,
          numPage: 1,
          includeMultiLingual: searchInfos.showMultiLingual,
          showOtherType: searchInfos.showOtherTypes,
          order: searchInfos.sortType.name,
          sortDirection: searchInfos.sortMode.name,
        ),
      ).thenAnswer(
        (_) => Future<Result<SearchCardsResultEntity>>.value(
          Result<SearchCardsResultEntity>.failure(exception: exception),
        ),
      );

      expect(
        container.read(searchMtgCardsNotifProvider),
        const SearchMtgState.initial(numPage: 0, hasMore: true),
      );
      await container
          .read(searchMtgCardsNotifProvider.notifier)
          .searchMtgCards();
      await expectLater(
        container.read(searchMtgCardsNotifProvider),
        SearchMtgState.error(
          numPage: 0,
          hasMore: true,
          exception: exception,
        ),
      );
    });

    test('catch all states - search first page ', () async {
      final SearchFilterEntity searchInfos = container.read(searchProvider);
      when(
        () => mockMtgRepository.searchByName(
          searchText: searchInfos.textSearch,
          numPage: 1,
          includeMultiLingual: searchInfos.showMultiLingual,
          showOtherType: searchInfos.showOtherTypes,
          order: searchInfos.sortType.name,
          sortDirection: searchInfos.sortMode.name,
        ),
      ).thenAnswer(
        (_) => Future<Result<SearchCardsResultEntity>>.value(
          Result<SearchCardsResultEntity>.success(data: entity),
        ),
      );
      final List<SearchMtgState> states = <SearchMtgState>[];
      container.listen(
        searchMtgCardsNotifProvider,
        (_, SearchMtgState next) {
          states.add(next);
        },
        fireImmediately: true,
      );

      await container
          .read(searchMtgCardsNotifProvider.notifier)
          .searchMtgCards();

      await expectLater(states, <SearchMtgState>[
        const SearchMtgState.initial(numPage: 0),
        const SearchMtgState.loading(numPage: 0),
        SearchMtgState.success(
          numPage: 1,
          hasMore: true,
          cards: entity.results,
        ),
      ]);
    });
  });

  group('provider search next cards', () {
    final dynamic jsonDataFirstPage =
        fixture('features/cards/cards_page_1.json');
    final dynamic jsonDataSecondPage =
        fixture('features/cards/cards_page_2.json');
    final SearchCardsResultEntity entityFirstPage =
        SearchCardsResultModel.fromJson(jsonDecode(jsonDataFirstPage))
            .toDomain();

    final SearchCardsResultEntity entitySecondPage =
        SearchCardsResultModel.fromJson(jsonDecode(jsonDataSecondPage))
            .toDomain();

    test('success - search next page ', () async {
      final SearchFilterEntity searchInfos = container.read(searchProvider);
      container.read(searchMtgCardsNotifProvider.notifier).state =
          SearchMtgState.success(
        numPage: 1,
        hasMore: true,
        cards: entityFirstPage.results,
      );

      when(
        () => mockMtgRepository.searchByName(
          searchText: searchInfos.textSearch,
          numPage: 2,
          includeMultiLingual: searchInfos.showMultiLingual,
          showOtherType: searchInfos.showOtherTypes,
          order: searchInfos.sortType.name,
          sortDirection: searchInfos.sortMode.name,
        ),
      ).thenAnswer(
        (_) => Future<Result<SearchCardsResultEntity>>.value(
          Result<SearchCardsResultEntity>.success(data: entitySecondPage),
        ),
      );

      final List<SearchMtgState> states = <SearchMtgState>[];
      container.listen(
        searchMtgCardsNotifProvider,
        (_, SearchMtgState next) {
          states.add(next);
        },
        fireImmediately: true,
      );

      await container
          .read(searchMtgCardsNotifProvider.notifier)
          .searchNext(numPage: 2);

      await expectLater(states, <SearchMtgState>[
        SearchMtgState.success(
          numPage: 1,
          hasMore: true,
          cards: <CardEntity>[
            ...entityFirstPage.results,
          ],
        ),
        SearchMtgState.success(
          numPage: 2,
          hasMore: false,
          cards: <CardEntity>[
            ...entityFirstPage.results,
            ...entitySecondPage.results,
          ],
        ),
      ]);
    });
  });
}
