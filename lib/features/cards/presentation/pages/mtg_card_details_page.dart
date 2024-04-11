import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/enums/legality_enum.dart';
import 'package:mtg_archiver/core/presentation/widgets/icon_touchable_widget.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/legalities_entity.dart';
import 'package:mtg_archiver/features/cards/domain/providers/details_provider.dart';
import 'package:mtg_archiver/features/cards/domain/providers/favorites_provider.dart';

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
  late ScrollController _scrollController;
  bool _showAppBar = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<CardEntity> detailState =
        ref.watch(detailsProvider(widget.cardId));
    return Scaffold(
      body: SafeArea(
        child: detailState.when(
          data: (CardEntity cardInfo) {
            return Column(
              children: <Widget>[
                AnimatedContainer(
                  height: _showAppBar ? 56.0 : 0.0,
                  duration: const Duration(milliseconds: 300),
                  child: AppBar(
                    title: Text(widget.cardName),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Padding(
                      padding: EdgeInsets.all(Spacing.regular.value),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          if (cardInfo.imageUris?.largest != null)
                            Padding(
                              padding: EdgeInsets.all(Spacing.medium.value),
                              child: Image.network(
                                cardInfo.imageUris!.largest,
                              ),
                            ),
                          Text(
                            cardInfo.type,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          IconTouchableWidget(
                            icon: Icons.star,
                            horizontalPadding: 16,
                            verticalPadding: 8,
                            onTap: () {
                              ref.read(saveLocalCardProvider(cardInfo));
                            },
                          ),
                          if (cardInfo.legalities != null)
                            ...legalities(cardInfo.legalities!),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          error: (_, __) => const SizedBox.shrink(),
          loading: () => const Center(child: LoadingWidget()),
        ),
      ),
    );
  }

  List<Widget> legalities(LegalitiesEntity legalities) {
    final List<Widget> legals = <Widget>[];
    legalities.toMap().forEach((String key, Legality value) {
      legals.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(Spacing.base.value),
              color: AppColors.inactiveGrey,
              child: Text(key),
            ),
            Container(
              padding: EdgeInsets.all(Spacing.base.value),
              color: value.backgroundColor,
              child: Text(value.name),
            ),
          ],
        ),
      );
    });
    return legals;
  }

  void _scrollListener() {
    if (_scrollController.offset < 50) {
      setState(() {
        _showAppBar = false;
      });
    }
    if (_scrollController.offset >= 50) {
      setState(() {
        _showAppBar = true;
      });
    }
  }
}
