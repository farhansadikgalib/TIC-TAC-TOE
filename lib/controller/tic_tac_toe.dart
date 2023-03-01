import 'package:get/get.dart';

class TicTacToeController extends GetxController{
  final RxBool stopInteraction = false.obs;
  final RxInt xScore = 0.obs;
  final RxInt yScore = 0.obs;

}