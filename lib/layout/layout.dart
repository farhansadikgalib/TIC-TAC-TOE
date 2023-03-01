import 'package:flutter/material.dart';
import 'package:tictactoe/constants/constants.dart';
import 'package:tictactoe/utils/config.dart';
import 'package:tictactoe/widgets/appbar.dart';
import 'package:tictactoe/widgets/footer_page.dart';

class Customlayout extends StatelessWidget {
  final Widget child;

  const Customlayout({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Constants.backgroundColor,
                child: Column(children: [
                  AppBarWidget(),
                  Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.safeBlockVertical * 3,
                      ),
                      child: AppFooterPage())
                ]))));
  }
}
