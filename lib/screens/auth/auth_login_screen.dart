import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:official_starifly/widgets/auth/auth_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:official_starifly/widgets/auth/auth_top_bar.dart';
import 'package:official_starifly/widgets/basic/custom_textfield.dart';
import 'package:provider/provider.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({Key? key}) : super(key: key);

  @override
  _AuthLoginScreenState createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  TextEditingController authLoginEmailController = TextEditingController();
  TextEditingController authLoginPasswordController = TextEditingController();
  FocusNode loginFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          child: Column(
            children: [
              AuthTopBar(),
              LottieBuilder.asset(
                "assets/login.json",
                height: MediaQuery.of(context).size.width < 380 ? 150 : 250,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: CustomTextField(
                  hintTextInput: S().alemail,
                  controllerInput: authLoginEmailController,
                  textInputTypeInput: TextInputType.emailAddress,
                  focusNode: loginFocus,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  authProvider.signInWithApple();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/apple_light_logo.png"),
                    Text(
                      "Sign in with Apple",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  authProvider.signInWithGoogle();
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/apple_light_logo.png"),
                    Text("Sign in with Google"),
                  ],
                ),
                style: ButtonStyle(elevation: MaterialStateProperty.all(0)),
              ),
              // SignInWithAppleButton(
              //   onPressed: () async {
              //     final credential = await SignInWithApple.getAppleIDCredential(
              //       scopes: [
              //         AppleIDAuthorizationScopes.email,
              //         AppleIDAuthorizationScopes.fullName,
              //       ],
              //     );

              //     print(credential);

              //     // Now send the credential (especially `credential.authorizationCode`) to your server to create a session
              //     // after they have been validated with Apple (see `Integration` section for more information on how to do this)
              //   },
              // ),

              TextButton(
                  onPressed: () async {
                    // FirebaseAuth.instance.signInAnonymously();

                    // authProvider.emailLogin(
                    //     context, "simon@starifly.hk", "simon@1202");
                    await authProvider.signInWithApple();
                    await authProvider.callLoginFunction();
                    print(FirebaseAuth.instance.currentUser?.uid);
                  },
                  child: Text("Signin Apple")),
              TextButton(
                  onPressed: () async {
                    // FirebaseAuth.instance.signInAnonymously();

                    // authProvider.emailLogin(
                    //     context, "simon@starifly.hk", "simon@1202");
                    await authProvider.logOut();
                    print(FirebaseAuth.instance.currentUser?.uid);
                  },
                  child: Text("Signout")),
              TextButton(
                  onPressed: () async {
                    // FirebaseAuth.instance.signInAnonymously();

                    // authProvider.emailLogin(
                    //     context, "simon@starifly.hk", "simon@1202");
                    // await authProvider.logOut();
                    print(FirebaseAuth.instance.currentUser?.uid);
                  },
                  child: Text("check uid"))
            ],
          ),
        ),
      ),
    );
  }
}
