import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive/hive.dart';
import 'package:mtg_archiver/core/data/datasources/mtg_local_data_source_impl.dart';
import 'package:mtg_archiver/core/di/injection_providers.dart';
import 'package:mtg_archiver/core/di/register_module.dart';
import 'package:mtg_archiver/core/extensions/context_extension.dart';
import 'package:mtg_archiver/core/presentation/providers/settings_state.dart';
import 'package:mtg_archiver/core/router/app_router.dart';
import 'package:mtg_archiver/core/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final HiveInterface hive = await RegisterModule.hive;
  await dotenv.load(fileName: 'assets/cfg/app_settings');

  runApp(
    ProviderScope(
      overrides: <Override>[
        mtgLocalDataSourceProvider
            .overrideWithValue(MtgLocalDataSourceImpl(hive: hive)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  final AppRouter _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkPhoneSettings();
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Future<void>.delayed(const Duration(seconds: 2))
        .then((_) => _checkPhoneSettings());
  }

  @override
  Widget build(BuildContext context) {
    final SettingState settingsState = ref.watch(settingsProvider);
    return ScreenUtilInit(
      rebuildFactor: (MediaQueryData oldMedia, MediaQueryData newMedia) =>
          oldMedia != newMedia,
      designSize: const Size(390, 844),
      useInheritedMediaQuery: true,
      builder: (_, __) => MaterialApp(
        onGenerateTitle: (BuildContext context) =>
            context.translate().app_title,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: _appRouter.initialRoute,
        onGenerateInitialRoutes: _appRouter.onGenerateInitialRoutes,
        onGenerateRoute: _appRouter.onGenerateRoute,
        navigatorKey: _appRouter.navigatorKey,
        themeMode: settingsState.themeMode,
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        highContrastDarkTheme: AppTheme.highContrast(),
      ),
    );
  }

  void _checkPhoneSettings() {
    SettingState editState = ref.read(settingsProvider.notifier).state;
    if (MediaQuery.platformBrightnessOf(context) == Brightness.dark) {
      editState = editState.copyWith(themeMode: ThemeMode.dark);
    } else if (MediaQuery.highContrastOf(context)) {
      editState = editState.copyWith(themeMode: ThemeMode.system);
    } else {
      editState = editState.copyWith(themeMode: ThemeMode.light);
    }

    ref.read(settingsProvider.notifier).state = editState;
  }
}
