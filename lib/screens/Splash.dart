import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tictactoe/screens/home.dart';
import 'package:tictactoe/widgets/app_footer.dart';

import '../widgets/appbar.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5d9e9f),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            AppBarWidget(),
            SizedBox(
              height: 15,
            ),
            AppFooterWidget()
          ],
        ),
      ),
    );
  }
}
