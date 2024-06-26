import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/presentation/widgets/icon_touchable_widget.dart';
import 'package:mtg_archiver/core/resources/manas_svg.dart';
import 'package:mtg_archiver/core/theme/app_text_styles.dart';
import 'package:mtg_archiver/core/theme/colors.dart';
import 'package:mtg_archiver/core/theme/radius.dart';
import 'package:mtg_archiver/core/theme/sizes.dart';
import 'package:mtg_archiver/features/cards/domain/entities/card_entity.dart';

class CardListItemWidget extends StatelessWidget {
  const CardListItemWidget({
    required this.card,
    required this.onDetailsClick,
    super.key,
  });

  final CardEntity card;
  final VoidCallback onDetailsClick;

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = getColors();
    return card.imageUris == null
        ? _easyView(colors, context)
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
            back: _easyView(colors, context),
          );
  }

  List<Color> getColors() {
    final List<Color> list =
        card.colors.map((ManaColor e) => e.color).whereType<Color>().toList();
    if (list.isNotEmpty && list.length == 1) {
      list.add(list.first);
    }
    return list;
  }

  Widget _easyView(List<Color> colors, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Spacing.regular.value),
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
      child: Container(
        color: context.secondaryColor,
        padding: EdgeInsets.all(Spacing.base.value),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              card.name,
              textAlign: TextAlign.center,
              style: AppTextStyles.bold16.copyWith(color: context.primaryColor),
            ),
            Text(
              card.type,
              textAlign: TextAlign.center,
              style:
                  AppTextStyles.regular12.copyWith(color: context.primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (card.manaCost.colorless > 0)
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.asset(
                        ManasSvg.colorlessEmpty,
                        height: 25,
                      ),
                      Text(
                        card.manaCost.colorless.toString(),
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ...card.manaCost.colors
                    .map((ManaColor color) => color.getPicture(25)),
              ],
            ),
            AppGap.mediumHeight(),
            IconTouchableWidget(
              icon: Icons.info,
              horizontalPadding: 16,
              verticalPadding: 8,
              onTap: onDetailsClick,
            ),
          ],
        ),
      ),
    );
  }
}
