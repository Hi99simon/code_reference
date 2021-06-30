import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/widgets/auth/emailpw_login_button.dart';
import 'package:official_starifly/widgets/basic/custom_textfield.dart';
import 'package:provider/provider.dart';

class ForgotPwScreen extends StatefulWidget {
  final String forgotPwEmailInput;
  const ForgotPwScreen({
    Key? key,
    required this.forgotPwEmailInput,
  }) : super(key: key);

  @override
  _ForgotPwScreenState createState() => _ForgotPwScreenState();
}

class _ForgotPwScreenState extends State<ForgotPwScreen> {
  final _forgotPwFormKey = GlobalKey<FormState>();
  TextEditingController _forgotEmailController = TextEditingController();
  @override
  void initState() {
    _forgotEmailController.text = widget.forgotPwEmailInput;
    super.initState();
  }

  @override
  void dispose() {
    _forgotEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S().forgotpw),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    final authProviderFalse = Provider.of<AuthProvider>(context, listen: false);
    if (MediaQuery.of(context).size.width > 768) {
      //ipad
      return Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FractionallySizedBox(
                widthFactor: 0.6,
                child: Form(
                    key: _forgotPwFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                            hintTextInput: S().alemail,
                            controllerInput: _forgotEmailController),
                        SizedBox(
                          height: 50,
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                  alignment: Alignment.center,
                  child: EmailPwLoginButton(
                    function: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                      if (_forgotPwFormKey.currentState!.validate()) {
                        EasyLoading.show(status: "${S().loading}...");
                        Future.delayed(Duration(seconds: 1), () {
                          authProviderFalse
                              .forgotPw(_forgotEmailController.text)
                              .then((value) {
                            EasyLoading.showToast(S().alreadysentpw);
                            EasyLoading.dismiss();
                            Navigator.pop(context);
                          }).catchError((onError) {
                            EasyLoading.showError(onError);
                            Navigator.pop(context);
                          });
                        });
                      }
                    },
                    text: S().forgotpw,
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: _forgotPwFormKey,
                child: Column(
                  children: [
                    CustomTextField(
                        hintTextInput: S().alemail,
                        controllerInput: _forgotEmailController),
                  ],
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Align(
                alignment: Alignment.center,
                child: EmailPwLoginButton(
                  function: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                    if (_forgotPwFormKey.currentState!.validate()) {
                      EasyLoading.show(status: "${S().loading}...");
                      Future.delayed(Duration(seconds: 1), () {
                        authProviderFalse
                            .forgotPw(_forgotEmailController.text)
                            .then((value) {
                          EasyLoading.showToast(S().alreadysentpw);
                          EasyLoading.dismiss();
                          Navigator.pop(context);
                        }).catchError((onError) {
                          EasyLoading.showError(onError);
                          Navigator.pop(context);
                        });
                      });
                    }
                  },
                  text: S().forgotpw,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      );
    }
  }
}
