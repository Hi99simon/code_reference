import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_beep/flutter_beep.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class SignUpConfirmBody extends StatefulWidget {
  final PageController signUpPageController;
  const SignUpConfirmBody({Key? key, required this.signUpPageController})
      : super(key: key);

  @override
  _SignUpConfirmBodyState createState() => _SignUpConfirmBodyState();
}

class _SignUpConfirmBodyState extends State<SignUpConfirmBody> {
  Timer? _timer;
  Timer? _timer2;
  int _startCount = 4;
  int _verifyCount = 4;

  countdown() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_startCount == 0) {
        setState(() {
          _startCount = 4;
        });
      } else {
        setState(() {
          _startCount -= 1;
        });
      }
    });
  }

  verifycountdown() {
    _timer2 = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_verifyCount == 0) {
        setState(() {
          _verifyCount = 1;
        });
      } else {
        setState(() {
          _verifyCount -= 1;
        });
      }
    });
  }

  @override
  void initState() {
    countdown();
    verifycountdown();

    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer2?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _authProviderFalse =
        Provider.of<AuthProvider>(context, listen: false);

    final _authProvider = Provider.of<AuthProvider>(context, listen: true);

    if (_startCount == 0) {
      setState(() {
        _startCount = 4;
      });
      _authProviderFalse.checkEmailVerified().then((value) {
        if (_authProvider.isUserAcVerified == true) {
          _timer?.cancel();
          FlutterBeep.beep();
          widget.signUpPageController.jumpToPage(2);
          EasyLoading.showSuccess(S().verifiedemail);
        }
      });
    }

    if (_verifyCount == 0) {
      setState(() {
        _verifyCount = 1;
      });
      _authProviderFalse.checkEmailVerified().then((value) {
        if (_authProvider.isUserAcVerified == true) {
          _timer2?.cancel();
          FlutterBeep.beep();
          widget.signUpPageController.jumpToPage(2);
          EasyLoading.showSuccess(S().verifiedemail);
        }
      });
    }

    return Container(
      color: Colors.red,
    );
  }
}
