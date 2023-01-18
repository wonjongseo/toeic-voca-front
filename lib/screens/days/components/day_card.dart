import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/voca/components/voca_section.dart';

class DayCard extends StatelessWidget {
  const DayCard({
    Key? key,
    required this.size,
    required this.index,
  }) : super(key: key);

  final Size size;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VocaSection(
                vocas: Voca.getDay(index),
              ),
            ),
          );
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 30),
          height: 90,
          width: size.width / 1.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.yellow,
            boxShadow: [cBoxShadow],
            gradient: cLinearGradient,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Day $index',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: size.width / 2 - 50,
                      child: LinearProgressIndicator(
                        value: (0.1 * index),
                      ),
                    ),
                    Text(' 0 / ${Voca.getCountOfDay(index)}'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
