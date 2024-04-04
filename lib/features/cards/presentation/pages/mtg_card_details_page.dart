import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/providers/details_provider.dart';

class MtgCardDetailsPage extends ConsumerStatefulWidget {
  const MtgCardDetailsPage({
    required this.cardId,
    required this.cardName,
    super.key,
  });

  final String cardId;
  final String cardName;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MtgCardDetailsPageState();
}

class _MtgCardDetailsPageState extends ConsumerState<MtgCardDetailsPage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<CardEntity> detailState =
        ref.watch(detailsProvider(widget.cardId));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cardName),
      ),
      body: Center(
        child: detailState.when(
          data: (CardEntity cardInfo) => Image.network(
            cardInfo.imageUris!.large!,
          ),
          error: (_, __) => const SizedBox.shrink(),
          loading: LoadingWidget.new,
        ),
      ),
    );
  }
}
