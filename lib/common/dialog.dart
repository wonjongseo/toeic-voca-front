
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_example.dart';

void createDialog(String word,String content){
   Get.dialog(
     AlertDialog(
       title: Text(word),
       content: Text(content),
       actions: [
         TextButton(onPressed: () {
            
         }, child: const Text('뜻')),
       ],
     )
   );
}
