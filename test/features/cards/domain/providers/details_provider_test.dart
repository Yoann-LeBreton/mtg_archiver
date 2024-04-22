import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:mtg_archiver/core/domain/entities/result.dart';
import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/error/exceptions.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/providers/details_provider.dart';
import 'package:mtg_archiver/features/cards/domain/repositories/mtg_repository.dart';

class MockMtgRepository extends Mock implements MtgRepository {}

void main() {
  final MockMtgRepository mockMtgRepository = MockMtgRepository();
  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer(
      overrides: <Override>[
        mtgRepositoryProvider.overrideWithValue(mockMtgRepository),
      ],
    );
    addTearDown(container.dispose);
  });

  final CardEntity card = CardEntity(
    id: '123',
    name: 'card template',
    releaseDate: '01/02/2003',
    type: 'test type',
    effect: 'card for test',
    colors: <ManaColor>[],
    manaCost: (colors: <ManaColor>[], colorless: 0),
  );

  group('provider get details by cardId', () {
    test('success - details by cardId', () async {
      when(() => mockMtgRepository.getCardById(cardId: '123'))
          .thenAnswer((_) async => Result<CardEntity>.success(data: card));
      expect(
        container.read(detailsProvider('123')),
        const AsyncValue<CardEntity>.loading(),
      );
      await container.read(detailsProvider('123').future);
      expect(
        container.read(detailsProvider('123')),
        AsyncValue<CardEntity>.data(card),
      );
      verify(() => mockMtgRepository.getCardById(cardId: '123')).called(1);
    });

    test('failure - details by cardId', () async {
      when(() => mockMtgRepository.getCardById(cardId: '123')).thenAnswer(
        (_) async => Result<CardEntity>.failure(exception: ServerException()),
      );
      expect(
        container.read(detailsProvider('123')),
        const AsyncValue<CardEntity>.loading(),
      );
      await expectLater(
        container.read(detailsProvider('123').future),
        throwsA(isA<Exception>()),
      );
      expect(
        container.read(detailsProvider('123')),
        isA<AsyncError<CardEntity>>(),
      );
      verify(() => mockMtgRepository.getCardById(cardId: '123')).called(1);
    });
  });
}
