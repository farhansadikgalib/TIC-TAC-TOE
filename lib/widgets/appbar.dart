import 'package:flutter/material.dart';
import 'package:tictactoe/constants/constants.dart';
import 'package:tictactoe/utils/config.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Center(
      child: Column(
        children: [
          Text(
            Constants.appTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                height: 0.1,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                75,
                (_) => Text(
                      '.',
                      style: TextStyle(
                          color: Constants.yellowColor,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    )),
          )
        ],
      ),
    );
  }
}
