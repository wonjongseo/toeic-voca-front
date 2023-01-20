import 'package:get/get.dart';

class ScoreController extends GetxController {
  late List<int> _dayScore ;

  List<int> get dayScore => _dayScore;

  set dayScore (List<int> dayScore) {
    _dayScore = dayScore;
  }



}