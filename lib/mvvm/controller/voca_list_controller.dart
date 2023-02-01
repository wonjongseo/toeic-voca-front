import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca/voca.dart';


class VocaListController extends GetxController {
//  late VocaRepository _vocaRepository;

  late Map<String, List<Voca>> items;

  late List<Voca> _vocas;
  List<Voca> get vocas => _vocas;

  VocaListController() {
//    _vocaRepository = VocaRepository();
    _loadVocas();
  }

  Future<void> _loadVocas() async {
    items = Voca.listToMap();
  //  _vocas = await _vocaRepository.getItem();
    update();
  }
}
