import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/mvvm/controller/voca_list_controller.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_card.dart';

class VocaListView extends StatelessWidget {
  VocaListView({super.key});
  late VocaListController vocaListController;

  @override
  Widget build(BuildContext context) {
    vocaListController = Get.put(VocaListController());

    return Scaffold(
      appBar: AppBar(),
      body: _buildVocaList(),
    );
  }

  Widget _buildVocaList() {
    final vocas = vocaListController.vocas;
    final vocasCount = vocas.length;

    return GetBuilder<VocaListController>(builder: (context) {
      return ListView(
        children: List.generate(
          vocasCount,
          (index) {
            return VocaCard(voca: vocas[index]);
          },
        ),
      );
    });
  }
}
