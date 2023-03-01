import 'package:flutter/material.dart';
import 'package:tictactoe/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPress;
  final String text;
  final double? width;
  final double? height;
  const ButtonWidget({Key? key, required this.onPress, required this.text, this.width, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 300,
      height: height ?? 50,
      child: TextButton(
        onPressed: onPress,
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Constants.buttonColor),foregroundColor: MaterialStateProperty.all(Constants.whiteColor)),
        child: Text(text.toUpperCase(),style: TextStyle(fontWeight: FontWeight.w500,letterSpacing: 1),),


      ),

    );
  }
}
