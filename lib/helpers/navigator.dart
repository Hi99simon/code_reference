import 'package:flutter/material.dart';
import 'package:official_starifly/screens/home/homescreen_master.dart';

navigateHomeScreenMaster({
  required BuildContext context,
}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HomescreenMaster(),
      settings: RouteSettings(name: '/homescreenmaster'),
    ),
  );
}
