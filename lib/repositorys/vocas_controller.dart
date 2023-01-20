import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca.dart';

class VocasController extends GetxController {

    late List<List<Voca>> _vocasOfDay; 

    VocasController(List<List<Voca>> vocasOfDay) {
    _vocasOfDay  = vocasOfDay;
    }

    List<List<Voca>> get vocasOfDay => _vocasOfDay;

    List<Voca>  getStepVocas  (int step) => _vocasOfDay[step];

    int get getVocasOfDayCnt => _vocasOfDay.length;

}