
import 'package:flutter/cupertino.dart';
import 'package:jongseo_toeic/constants/voca.dart';
import 'package:jongseo_toeic/screens/days/components/day_card.dart';
import 'package:jongseo_toeic/screens/home_screen.dart';

class DaysList extends StatelessWidget {
  const DaysList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        Voca.getDayCount(),
        (index) {
          if (index == 0) {
            return Container(
              margin: const EdgeInsets.only(bottom: 20),
            );
          } else {
            return DayCard(size: size, index: index);
          }
        },
      ),
    );
  }
}