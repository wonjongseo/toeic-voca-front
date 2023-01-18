import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/voca/voca_card.dart';

class Vocas extends StatefulWidget {
  final List<Map<String, String>> vocas;
  const Vocas({super.key, required this.vocas});

  @override
  State<Vocas> createState() => _VocasState();
}

class _VocasState extends State<Vocas> {
  bool isEnglish = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: ListView(
          children: List.generate(widget.vocas.length, (index) {
        return VocaCard(
          voca: isEnglish
              ? Voca(
                  voca: widget.vocas[index]['voca']!,
                  mean: widget.vocas[index]['mean']!,
                )
              : Voca(
                  voca: widget.vocas[index]['mean']!,
                  mean: widget.vocas[index]['voca']!,
                ),
        );
      })),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
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
      ),
      actions: [
        InkWell(
          onTap: () {
            setState(() {});
          },
          child: const Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                'test',
                style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
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
