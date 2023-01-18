import 'package:flutter/material.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/voca/voca_card.dart';
import 'package:jongseo_toeic/screens/voca/voca_section.dart';

class DayScreen extends StatefulWidget {
  const DayScreen({super.key, required this.vocas});
  final List<Map<String, String>> vocas;

  @override
  State<DayScreen> createState() => _DayScreenState();
}

class _DayScreenState extends State<DayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            foregroundColor: Colors.white,
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )),
        body: VocaSection(
          vocas: widget.vocas,
        ));
  }
}
