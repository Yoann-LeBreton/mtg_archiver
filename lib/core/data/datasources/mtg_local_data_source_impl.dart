import 'package:hive/hive.dart';
import 'package:mtg_archiver/core/data/datasources/mtg_local_data_source.dart';
import 'package:mtg_archiver/features/cards/data/models/card_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mtg_local_data_source_impl.g.dart';

@Riverpod(keepAlive: true)
MtgLocalDataSource mtgLocalDataSource(MtgLocalDataSourceRef ref) =>
    throw UnimplementedError();

final class MtgLocalDataSourceImpl implements MtgLocalDataSource {
  const MtgLocalDataSourceImpl({required this.hive});

  final HiveInterface hive;

  static const String boxName = 'mtg_box';

  @override
  Future<List<CardModel>> getCards() async {
    await hive.openBox<CardModel>(boxName);
    final Box<CardModel> cardsBox = hive.box<CardModel>(boxName);
    return cardsBox.values.toList();
  }

  @override
  Future<void> saveCard(CardModel card) async {
    await hive.openBox<CardModel>(boxName);
    final Box<CardModel> cardsBox = hive.box<CardModel>(boxName);
    await cardsBox.put(card.id, card);
  }
}
