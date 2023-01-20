import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jongseo_toeic/models/Question.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/repositorys/question_controller.dart';
import 'package:jongseo_toeic/screens/quiz/quiz_screen.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';
import 'package:get/get.dart';

const MY_PATH = '/my';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  List<Map<int, List<Voca>>> map = List.empty(growable: true);
  int day=  1;
  final QuestionController _questionController = Get.put(QuestionController());
  bool isEnglish= false;
  List<Voca> vocas = List.empty(growable: true);
  // List<Map<String,String>> vocas = List.empty(growable: true);
  
  String _text = "" ;
  late TextEditingController _vocaTextEditingController ;
  late TextEditingController _meanTextEditingController ;

  @override
  void initState() {
    super.initState();
    _vocaTextEditingController = TextEditingController();
    _meanTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _vocaTextEditingController.dispose();
    _meanTextEditingController.dispose();
    super.dispose();
  }

  void createMyVoca(String voca, String mean) {
    Voca newVoca = Voca(voca: voca, mean: mean, id:  1);
    
    print(vocas);
    // vocas.add({voca :mean});
    vocas.add(newVoca);
    print(vocas);
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  MyInputEditer(hintText:'Input your voca' , labelText: 'voca', size : size,  textEditingController :_vocaTextEditingController),
                  const SizedBox(height: 10),
                  MyInputEditer(hintText:'Input your mean' , labelText: 'mean', size : size,  textEditingController :_meanTextEditingController),
                ],
              ),
               const SizedBox(width: 10),
               ElevatedButton(
                onPressed: () {
                  String voca = _vocaTextEditingController.value.text;
                  String mean = _meanTextEditingController.value.text;
                  setState(() {
                    createMyVoca(_vocaTextEditingController.value.text, _meanTextEditingController.value.text);
                  });
                }, 
                child: Icon(Icons.add,  size: 14,)
                )
            ],
          ),
        
        
          SingleChildScrollView(
            child: Column(
              children: List.generate(vocas.length, (index) {
                // return VocaCard(voca: Voca.fromMap(vocas[index]));
                return VocaCard(voca: vocas[index]);
              }),
            ),
          )
        ],
      ),
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
            // onTap:
            onTap: ()  {
               map = Question.generateQustion(vocas);
              _questionController.setQuestions(map);
              Get.to(() => QuizScreen(), arguments: {'day': day});
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
          onTap: () {
            setState(() {
              isEnglish = !isEnglish;
            });
          },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(
              Icons.language,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}

class MyInputEditer extends StatelessWidget {
  const MyInputEditer({super.key, required this.size, required this.textEditingController, required this.labelText, required this.hintText});
  final TextEditingController textEditingController;
  final Size size;
  final String labelText, hintText;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
         width: size.width * 0.5,
         child: TextField(
           controller: textEditingController,
           decoration: InputDecoration(
             labelText: labelText,
             hintText: hintText,
       
             focusedBorder:  OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(width: 1, color: Colors.redAccent),
             ),
             enabledBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(width: 1, color: Colors.redAccent),
             ),
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
               borderSide: BorderSide(width: 1, color: Colors.redAccent),
             )
           ),
           keyboardType: TextInputType.text,
         ),
       );
  }
}