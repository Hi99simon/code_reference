import 'package:firebase_auth/firebase_auth.dart';
import 'package:official_starifly/generated/l10n.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:official_starifly/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class HomescreenMaster extends StatefulWidget {
  const HomescreenMaster({Key? key}) : super(key: key);

  @override
  _HomescreenMasterState createState() => _HomescreenMasterState();
}

class _HomescreenMasterState extends State<HomescreenMaster> {
  List displayVerticalCourses = [];

  @override
  void initState() {
    super.initState();
    callFetchVerticalCard();
  }

  @override
  Widget build(BuildContext context) {
    final authProviderFalse = Provider.of<AuthProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NAVY.CAMP",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextButton(
                onPressed: () async {
                  // FirebaseAuth.instance.signInAnonymously();

                  // authProvider.emailLogin(
                  //     context, "simon@starifly.hk", "simon@1202");
                  await authProviderFalse.logOut();
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
                child: Text("check uid")),
            Text(
              S().aboutcourse,
            ),
            Text(
              displayVerticalCourses.toString(),
            ),
            TextButton(
                onPressed: () async {
                  // FirebaseAuth.instance.signInAnonymously();

                  // authProvider.emailLogin(
                  //     context, "simon@starifly.hk", "simon@1202");
                  await Provider.of<AuthProvider>(context, listen: false)
                      .logOut();
                  print(
                      Provider.of<AuthProvider>(context, listen: false).userId);
                  // print(FirebaseAuth.instance.currentUser?.uid);
                },
                child: Text("Signout")),
          ],
        ),
      ),
    );
  }

  callFetchVerticalCard() async {
    HttpsCallable callFetchVerticalCard = FirebaseFunctions.instance
        .httpsCallable('fetchVerticalCourseCards',
            options: HttpsCallableOptions(timeout: Duration(seconds: 5)));

    try {
      final HttpsCallableResult result = await callFetchVerticalCard.call();

      setState(() {
        displayVerticalCourses = result.data['finalCourseList'];
      });

      print(displayVerticalCourses);
    } on FirebaseFunctionsException catch (e) {
      print('caught firebase functions exception');
      print(e.code);
      print(e.message);
      print(e.details);
    } catch (e) {
      print('caught generic exception');
      print(e);
    }
  }
}
