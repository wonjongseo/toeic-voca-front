import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/models/voca.dart';
import 'package:jongseo_toeic/screens/home/components/day_card.dart';

const String HOME_PATH  = '/';
class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Jongseo Voca',
            style: TextStyle(color: Colors.black),
          ),
          actions : [
            SvgPicture.asset('assets/svg/profile.svg' )
          ]
        ),
        
        body: ListView(
          children: List.generate(
            Voca.getDayCount(),
            (index) {
              if (index == 0) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 20),
                );
              } else {
                return  DayCard(index: index);
            }
         },
      ),
    )
 );
  }
}

