import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/constants/constants.dart';
import 'package:tictactoe/utils/config.dart';

class ScoreboardWidget extends StatelessWidget {
  final RxInt xScore;
  final RxInt yScore;

  const ScoreboardWidget({Key? key, required this.xScore, required this.yScore})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "$xScore",
          style: TextStyle(
              color: Constants.whiteColor,
              fontSize: 56,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal * 4),
          child: Text(
            ":",
            style:
                TextStyle(fontSize: 46, height: 1, fontWeight: FontWeight.w500),
          ),
        ),
        Text(
          "$yScore",
          style: TextStyle(
              color: Constants.whiteColor,
              fontSize: 56,
              fontWeight: FontWeight.w500),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.safeBlockHorizontal * 4),
        )
      ],
    );
  }
}
