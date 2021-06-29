import 'package:official_starifly/generated/l10n.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NAVY.CAMP",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              S().aboutcourse,
            ),
            Text(
              displayVerticalCourses.toString(),
            )
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
