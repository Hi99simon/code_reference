import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:official_starifly/providers/theme_provider.dart';
import 'package:official_starifly/screens/app_entry/init_app.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    Future.delayed(
        const Duration(milliseconds: 2450),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => InitScreen(),
                settings: RouteSettings(name: '/login'),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = Provider.of<ThemeChanger>(context).themeMode;
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.transparent,
          //https://lottiefiles.com/37967-background
          child: Stack(
            alignment: Alignment.center,
            children: [
              Lottie.asset(
                "assets/fill.json",
                fit: BoxFit.cover,
              ),
              Image.asset(
                  themeMode == ThemeMode.dark
                      ? "assets/xcode_launch.png"
                      : "assets/xcode_launch.png",
                  width: MediaQuery.of(context).size.width > 768
                      ? MediaQuery.of(context).size.width * 0.23
                      : MediaQuery.of(context).size.width * 0.4)
            ],
          )),
    );
  }
}
