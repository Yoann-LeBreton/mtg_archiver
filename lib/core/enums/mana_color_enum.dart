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
  colorless(ScryfallApiConstants.manaColorless, AppColors.manaColorless);

  const ManaColor(this.apiValue, this.color);
  final String apiValue;
  final Color color;
}

extension ManaColorx on ManaColor {
  SvgPicture getPicture() => switch (this) {
        ManaColor.white => SvgPicture.asset(ManasSvg.white),
        ManaColor.blue => SvgPicture.asset(ManasSvg.blue),
        ManaColor.red => SvgPicture.asset(ManasSvg.red),
        ManaColor.green => SvgPicture.asset(ManasSvg.green),
        ManaColor.black => SvgPicture.asset(ManasSvg.black),
        ManaColor.colorless => SvgPicture.asset(ManasSvg.colorless),
      };
}
