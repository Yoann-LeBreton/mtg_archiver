import 'package:collection/collection.dart';
import 'package:mtg_archiver/core/enums/legality_enum.dart';
import 'package:mtg_archiver/core/enums/mana_color_enum.dart';
import 'package:mtg_archiver/core/typedef/card_typedefs.dart';
import 'package:mtg_archiver/core/util/custom_regex.dart';

extension StringExtension on String {
  ManaCosts convertToManas() {
    final List<String> matches = RegExp(CustomRegex.manaCost.value)
        .allMatches(this)
        .map((RegExpMatch match) => match[1])
        .whereType<String>()
        .toList();
    if (matches.isNotEmpty) {
      final List<int> integers = matches
          .map(
            (String elem) =>
                (int.tryParse(elem) != null) ? int.parse(elem) : null,
          )
          .whereType<int>()
          .toList();
      final List<String> letters = matches
          .map(
            (String elem) => (int.tryParse(elem) == null) ? elem : null,
          )
          .whereType<String>()
          .toList();
      final List<ManaColor> manas = letters
          .map(
            (String color) => ManaColor.values
                .firstWhereOrNull((ManaColor mana) => mana.apiValue == color),
          )
          .whereType<ManaColor>()
          .toList();
      return (
        colors: manas,
        colorless: integers.isEmpty ? 0 : integers.first,
      );
    } else {
      return (colors: List<ManaColor>.empty(), colorless: 0);
    }
  }

  Legality convertToLegality() {
    return Legality.values.firstWhereOrNull(
            (Legality legality) => legality.apiValue == this) ??
        Legality.unknown;
  }
}
