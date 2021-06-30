import 'package:flutter/material.dart';

class SignUpMasterScreen extends StatefulWidget {
  final String? signupEmailInput;
  const SignUpMasterScreen({Key? key, this.signupEmailInput}) : super(key: key);

  @override
  _SignUpMasterScreenState createState() => _SignUpMasterScreenState();
}

class _SignUpMasterScreenState extends State<SignUpMasterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("register"),
      ),
    );
  }
}
