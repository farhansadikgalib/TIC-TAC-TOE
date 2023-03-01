import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tictactoe/controller/tic_tac_toe.dart';
import 'package:tictactoe/layout/layout.dart';
import 'package:tictactoe/utils/config.dart';
import 'package:tictactoe/widgets/cubes.dart';
import 'package:tictactoe/widgets/scoreboard.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final TicTacToeController tictacToeController = Get.put(TicTacToeController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GetBuilder<TicTacToeController>(builder: (_) {
      return Customlayout(
        child: Padding(
          padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 2),
          child: Column(

            children: [
              Padding(padding: EdgeInsets.only(bottom: SizeConfig.safeBlockVertical*7),
                child: ScoreboardWidget(xScore: tictacToeController.xScore, yScore: tictacToeController.yScore,

                ),
              ),
              for(var i=0; i<3; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for(var j=0;j<3;j++)
                      GestureDetector(onTap: (){
                        // tictacToeController
                      },
                      // child: CubesWidget(displayElement: displayElement, i: i, j: j),
                      )
                  ],
                )


            ],

          ),
        ),

      );
    });
  }
}
