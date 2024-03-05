import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizedString on BuildContext {
  AppLocalizations translate() => AppLocalizations.of(this);
  String currentLocale() => AppLocalizations.of(this).localeName;
}
