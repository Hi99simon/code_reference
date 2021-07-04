import 'package:flutter/material.dart';

showCustomDialog({
  required BuildContext context,
  Widget? title,
  Widget? content,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ),
        ),
        title: title,
        content: content,
      );
    },
  );
}
