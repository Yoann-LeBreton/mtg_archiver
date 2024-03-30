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
  colorWhiteBlue(
    ScryfallApiConstants.manaWhiteBlue,
    null,
  ),
  colorWhiteBlack(
    ScryfallApiConstants.manaWhiteBlack,
    null,
  ),
  colorBlackRed(
    ScryfallApiConstants.manaBlackRed,
    null,
  ),
  colorBlackGreen(
    ScryfallApiConstants.manaBlackGreen,
    null,
  ),
  colorBlueBlack(
    ScryfallApiConstants.manaBlueBlack,
    null,
  ),
  colorBlueRed(
    ScryfallApiConstants.manaBlueRed,
    null,
  ),
  colorRedGreen(
    ScryfallApiConstants.manaRedGreen,
    null,
  ),
  colorRedWhite(
    ScryfallApiConstants.manaRedWhite,
    null,
  ),
  colorGreenWhite(
    ScryfallApiConstants.manaGreenWhite,
    null,
  ),
  colorGreenBlue(
    ScryfallApiConstants.manaGreenBlue,
    null,
  );

  const ManaColor(this.apiValue, this.color);

  final String apiValue;
  final Color? color;
}

extension ManaColorx on ManaColor {
  SvgPicture getPicture(double height) {
    final String svgPath = switch (this) {
      ManaColor.white => ManasSvg.white,
      ManaColor.blue => ManasSvg.blue,
      ManaColor.red => ManasSvg.red,
      ManaColor.green => ManasSvg.green,
      ManaColor.black => ManasSvg.black,
      ManaColor.colorless => ManasSvg.colorless,
      ManaColor.colorWhiteBlue => ManasSvg.whiteBlue,
      ManaColor.colorWhiteBlack => ManasSvg.whiteBlack,
      ManaColor.colorBlackRed => ManasSvg.blackRed,
      ManaColor.colorBlackGreen => ManasSvg.blackGreen,
      ManaColor.colorBlueBlack => ManasSvg.blueblack,
      ManaColor.colorBlueRed => ManasSvg.blueRed,
      ManaColor.colorRedGreen => ManasSvg.redGreen,
      ManaColor.colorRedWhite => ManasSvg.redWhite,
      ManaColor.colorGreenWhite => ManasSvg.greenWhite,
      ManaColor.colorGreenBlue => ManasSvg.greenBlue,
    };
    return SvgPicture.asset(
      svgPath,
      height: height,
    );
  }
}
