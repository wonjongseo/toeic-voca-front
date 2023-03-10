import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:jongseo_toeic/config/constatns.dart';
import 'package:jongseo_toeic/controllers/question_controller.dart';
import 'package:jongseo_toeic/models/Question.dart';
import 'package:jongseo_toeic/screens/quiz/components/option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({required this.question});

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: const Color(0xFF101010)),
          ),
          const SizedBox(height: 20 / 2),
          ...List.generate(
            question.options.length,
            (index) => Option(
              test: question.options[index],
              index: index,
              press: () => _controller.checkAns(question, index),
            ),
          )
        ],
      ),
    );
  }
}
