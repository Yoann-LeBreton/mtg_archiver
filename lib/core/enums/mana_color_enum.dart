import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mtg_archiver/core/constants/scryfall_api_constants.dart';
import 'package:mtg_archiver/core/resources/manas_svg.dart';
import 'package:mtg_archiver/core/theme/colors.dart';

enum ManaColor {
  white(ScryfallApiConstants.manaWhite, AppColors.manaWhite),
  blue(ScryfallApiConstants.manaBlue, AppColors.manaBlue),
  red(ScryfallApiConstants.manaRed, AppColors.manaRed),
  green(ScryfallApiConstants.manaGreen, AppColors.manaGreen),
  black(ScryfallApiConstants.manaBlack, AppColors.manaBlack),
  colorless(ScryfallApiConstants.manaColorless, AppColors.manaColorless),
  colorRedGreen(
    ScryfallApiConstants.manRedGreen,
    AppColors.manaColorless,
  );
  //TODO : implement dual colors

  const ManaColor(this.apiValue, this.color);
  final String apiValue;
  final Color color;
}

extension ManaColorx on ManaColor {
  SvgPicture getPicture(double height) => switch (this) {
        ManaColor.white => SvgPicture.asset(
            ManasSvg.white,
            height: height,
          ),
        ManaColor.blue => SvgPicture.asset(
            ManasSvg.blue,
            height: height,
          ),
        ManaColor.red => SvgPicture.asset(
            ManasSvg.red,
            height: height,
          ),
        ManaColor.green => SvgPicture.asset(
            ManasSvg.green,
            height: height,
          ),
        ManaColor.black => SvgPicture.asset(
            ManasSvg.black,
            height: height,
          ),
        ManaColor.colorless => SvgPicture.asset(
            ManasSvg.colorless,
            height: height,
          ),
        ManaColor.colorRedGreen => SvgPicture.asset(
            ManasSvg.redGreen,
            height: height,
          ),
      };
}
