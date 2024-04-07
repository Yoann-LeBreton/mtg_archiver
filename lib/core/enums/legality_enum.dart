import 'package:flutter/material.dart';
import 'package:mtg_archiver/core/constants/scryfall_api_constants.dart';
import 'package:mtg_archiver/core/theme/colors.dart';

enum Legality {
  legal(ScryfallApiConstants.legalityLegal, AppColors.lightGreen),
  notLegal(ScryfallApiConstants.legalityNotLegal, AppColors.lightRed),
  restricted(ScryfallApiConstants.legalityRestricted, AppColors.lightYellow),
  banned(
    ScryfallApiConstants.legalityBanned,
    AppColors.ebonyClay,
  ),
  unknown('', AppColors.mayaBlue);

  const Legality(this.apiValue, this.backgroundColor);

  final String apiValue;
  final Color backgroundColor;
}
