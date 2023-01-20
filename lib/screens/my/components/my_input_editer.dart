import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jongseo_toeic/constants/constatns.dart';

class MyInputEditer extends StatelessWidget {
  const MyInputEditer({super.key, required this.textEditingController, required this.labelText, required this.hintText});
  final TextEditingController textEditingController;
  final String labelText, hintText;
  @override
  Widget build(BuildContext context) {
    return  Container(
         height: 40,
         decoration: cBoxDecoration,
         child: Padding(
           padding: const EdgeInsets.only(left: 10),
           child: TextField(
             controller: textEditingController,
             decoration: InputDecoration(
               labelText: labelText,
               border: InputBorder.none
             ),
             style: const TextStyle(fontSize: 12),
             keyboardType: TextInputType.text,
           ),
         ),
       );
  }
}