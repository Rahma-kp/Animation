import 'package:animation/controller/container_opacity_provider.dart';
import 'package:animation/controller/home_screen_provider.dart';
import 'package:animation/controller/icon_animation_provider.dart';
import 'package:animation/controller/physical_provider.dart';
import 'package:animation/controller/sandbox_provider.dart';
import 'package:animation/controller/text_opacity_provider.dart';
import 'package:animation/controller/text_slide_provider.dart';
import 'package:animation/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale = const Locale('en');
  setLocale(Locale newlocale) {
    setState(() {
      _locale = newlocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SandBoxProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TextOpacityprovider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PhysicalProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ContainerOpacityProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TextSlideProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => IconAnimationProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: _locale,
        home: Login(),
      ),
    );
  }
}
