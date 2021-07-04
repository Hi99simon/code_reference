import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final String avatarUrlInput;
  final double widthInput;
  final double heightInput;
  final Color borderColor;
  final double? borderWidth;
  const UserAvatar({
    Key? key,
    required this.avatarUrlInput,
    required this.widthInput,
    required this.heightInput,
    required this.borderColor,
    this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth ?? 2),
      ),
      height: heightInput,
      width: widthInput,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            avatarUrlInput,
          ),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
      ),
    );
  }
}
