import 'package:flutter/material.dart';
import 'package:tictactoe/constants/constants.dart';

class AppFooterPage extends StatelessWidget {
  const AppFooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(Constants.footer_details);
  }
}
