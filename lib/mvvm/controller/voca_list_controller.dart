import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/mvvm/model/voca_repository.dart';

class VocaListController extends GetxController {
  late VocaRepository _vocaRepository;

  late List<Voca> _vocas;
  List<Voca> get vocas => _vocas;

  VocaListController() {
    _vocaRepository = VocaRepository();
    _loadVocas();
  }

  Future<void> _loadVocas() async {
    _vocas = await _vocaRepository.getItem();
    update();
  }
}
