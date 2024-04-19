import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mtg_archiver/core/enums/legality_enum.dart';
import 'package:mtg_archiver/core/presentation/widgets/icon_touchable_widget.dart';
import 'package:mtg_archiver/core/presentation/widgets/loading_widget.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';
import 'package:mtg_archiver/features/cards/domain/entities/legalities_entity.dart';
import 'package:mtg_archiver/features/cards/domain/notifiers/favorite_card_notifier.dart';
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
    final bool favState = ref.watch(favoriteCardNotifProvider(widget.cardId));

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
                            icon: favState ? Icons.star : Icons.star_border,
                            iconSize: 32,
                            horizontalPadding: 16,
                            verticalPadding: 8,
                            onTap: () {
                              if (favState) {
                                ref
                                    .read(
                                      favoriteCardNotifProvider(
                                        widget.cardId,
                                      ).notifier,
                                    )
                                    .deleteLocalCard();
                              } else {
                                ref
                                    .read(
                                      favoriteCardNotifProvider(
                                        widget.cardId,
                                      ).notifier,
                                    )
                                    .saveLocalCard(cardInfo);
                              }
                            },
                          ),
                          if (cardInfo.legalities != null)
                            legalities(cardInfo.legalities!),
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

  Widget legalities(LegalitiesEntity legalities) {
    final Map<String, Legality> map = legalities.toMap();
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3,
      ),
      itemCount: map.length,
      itemBuilder: (BuildContext context, int index) {
        final String key = map.keys.elementAt(index);
        return Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(Spacing.base.value),
                color: AppColors.inactiveGrey,
                child: Text(key),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(Spacing.base.value),
                color: map[key]?.backgroundColor,
                child: Text(map[key]?.name ?? ''),
              ),
            ),
          ],
        );
      },
    );
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
