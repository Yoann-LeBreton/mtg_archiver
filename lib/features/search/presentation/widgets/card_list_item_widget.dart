import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/radius.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/search/domain/entities/card_entity.dart';

class CardListItemWidget extends StatelessWidget {
  const CardListItemWidget({required this.card, super.key});
  final CardEntity card;

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = getColors();
    return card.imageUris == null
        ? _easyView(colors)
        : FlipCard(
            direction: FlipDirection.HORIZONTAL,
            side: CardSide.FRONT,
            front: Image.network(
              card.imageUris!.smallest,
              loadingBuilder: (_, Widget child, ImageChunkEvent? progress) {
                return (progress == null)
                    ? child
                    : Center(
                        child: Container(
                          padding: EdgeInsets.all(Spacing.large.value),
                          decoration: BoxDecoration(
                            color: AppColors.whiteBackground,
                            borderRadius: AppRadius.radius8,
                            border: Border.all(
                              color: Colors.blueGrey,
                              width: 4,
                            ),
                          ),
                          child: const CircularProgressIndicator(
                            strokeWidth: 2,
                          ),
                        ),
                      );
              },
            ),
            back: _easyView(colors),
          );
  }

  List<Color> getColors() {
    final List<Color> list = card.colors.map((ManaColor e) => e.color).toList();
    return list;
  }

  Widget _easyView(List<Color> colors) {
    return Container(
      padding: EdgeInsets.all(Spacing.base.value),
      height: 80,
      width: 100,
      decoration: BoxDecoration(
        color: (colors.length >= 2) ? null : AppColors.paleYellow,
        gradient: (colors.length >= 2)
            ? LinearGradient(
                colors: colors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                tileMode: TileMode.clamp,
              )
            : null,
        border: Border.all(color: Colors.blueGrey, width: 4),
      ),
      child: Center(
        child: Text(
          card.name,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
