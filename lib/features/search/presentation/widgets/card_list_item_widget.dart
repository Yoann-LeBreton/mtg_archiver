import 'package:flutter/material.dart';
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
        ? Container(
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
            )),
          )
        : Image.network(
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
                        border: Border.all(color: Colors.blueGrey, width: 4),
                      ),
                      child: const CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                    ));
            },
          );
  }

  List<Color> getColors() {
    final List<Color> list = card.colors
        .map(
          (String color) => switch (color) {
            'G' => Colors.green,
            'U' => Colors.blueAccent,
            'W' => AppColors.platinum,
            'R' => Colors.red,
            'B' => Colors.black,
            String() => Colors.transparent,
          },
        )
        .toList();
    return list;
  }
}
