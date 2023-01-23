import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jongseo_toeic/constants/question_controller.dart';
import 'package:jongseo_toeic/models/Question.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/screens/my/components/my_input_editer.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:get/get.dart';

const String MY_PATH = '/my';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  // List<Map<int, List<Voca>>> map = List.empty(growable: true);
  int day = 1;
  final QuestionController _questionController = Get.put(QuestionController());
  bool isEnglish = false;
  List<Voca> vocas = List.empty(growable: true);

  late TextEditingController _vocaTextEditingController;
  late TextEditingController _meanTextEditingController;

  @override
  void initState() {
    super.initState();
    vocas.add(Voca.mine(id: '1', voca: 'voca', mean: 'mean'));
    _vocaTextEditingController = TextEditingController();
    _meanTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _vocaTextEditingController.dispose();
    _meanTextEditingController.dispose();
    super.dispose();
  }

  void createMyVoca() {
    String voca = _vocaTextEditingController.value.text;
    String mean = _meanTextEditingController.value.text;
    if (voca == '' || mean == '') return;
    Voca newVoca = Voca.mine(
        voca: voca, mean: mean, id: DateTime.now().microsecond.toString());
    vocas.add(newVoca);
    _vocaTextEditingController.clear();
    _meanTextEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
          child: Column(
        children: List.generate(vocas.length, (index) {
          return VocaCard(
            voca: vocas[index],
            onPress: () {
              setState(() {
                vocas.removeAt(index);
              });
            },
          );
        }),
      )),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.white,
      backgroundColor: Colors.white,
      elevation: 0,
      title: const Text(
        'My Page',
        style: TextStyle(color: Colors.black),
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        if (vocas.length > 3)
          InkWell(
            onTap: () {
              // map = Question.generateQustion(vocas);
              _questionController.map =Question.generateQustion(vocas);
              _questionController.setQuestions();
              Get.toNamed(QUIZ_PATH, arguments: {'day': day});
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: SvgPicture.asset(
                  'assets/svg/book.svg',
                  height: 30,
                ),
              ),
            ),
          ),
        InkWell(
          onTap: showDialog,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }

  void showDialog() {
    Get.dialog(AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('create my voca'),
          IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          )
        ],
      ),
      content: Container(
        height: 100,
        child: Column(children: [
          MyInputEditer(
              hintText: 'Input your voca',
              labelText: 'voca',
              textEditingController: _vocaTextEditingController),
          const SizedBox(height: 10),
          MyInputEditer(
              hintText: 'Input your mean',
              labelText: 'mean',
              textEditingController: _meanTextEditingController),
        ]),
      ),
      actions: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                createMyVoca();
              });
            },
            child: Icon(
              Icons.add,
              size: 14,
            )),
      ],
    ));
  }
}
