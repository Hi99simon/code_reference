import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/helpers/CupertinoLocalizationsDelegate.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/screens/app_entry/init_app.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:official_starifly/screens/app_entry/splash_screen.dart';
import 'package:provider/provider.dart';

class AppEntry extends StatefulWidget {
  const AppEntry({Key? key}) : super(key: key);
  @override
  _AppEntryState createState() => _AppEntryState();
}

class _AppEntryState extends State<AppEntry> {
  bool _initialized = false;
  bool _error = false;

  @override
  void initState() {
    super.initState();
    initializeFlutterFire();
  }

  void initializeFlutterFire() async {
    try {
      // Wait for Firebase to initialize and set `_initialized` state to true
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch (e) {
      // Set `_error` state to true if Firebase initialization fails
      setState(() {
        _error = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return buildInitMaterialApp();
  }

  buildInitMaterialApp() {
    final themeChanger = Provider.of<ThemeChanger>(context);

    FirebaseAnalytics analytics = FirebaseAnalytics();
    if (_error) {
      return Container();
    } else if (!_initialized) {
      return Container();
    } else {
      return MaterialApp(
        builder: EasyLoading.init(),
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          CupertinoLocalizationsDelegate(),
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'STARIFLY',
        themeMode: themeChanger.themeMode,
        theme: themeChanger.fontFamily == "default"
            ? customLightThemeNormalFont
            : customLightTheme,
        darkTheme: themeChanger.fontFamily == "default"
            ? customDarkThemeNormalFont
            : customDarkTheme,
        home: SplashScreen(),
        navigatorObservers: [
          FirebaseAnalyticsObserver(analytics: analytics),
        ],
      );
    }
  }
}
