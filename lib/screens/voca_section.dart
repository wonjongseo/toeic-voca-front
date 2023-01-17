import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jongseo_toeic/screens/vocas.dart';

class VocaSection extends StatelessWidget {
  const VocaSection({super.key, required this.vocas});
  final List<Map<String, String>> vocas;

  @override
  Widget build(BuildContext context) {
    int gridCount = vocas.length % 10 == 0
        ? (vocas.length / 10).floor()
        : (vocas.length / 10).ceil();

    return GridView.count(
      padding: const EdgeInsets.all(20.0),
      crossAxisCount: 2,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      children: List.generate(gridCount, (index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Vocas(
                  vocas: index + 1 != gridCount
                      ? vocas.sublist((index * 10), (index * 10 + 10))
                      : vocas.sublist(
                          (index * 10),
                          (index * 10 +
                              (vocas.length - (gridCount - 1) * 10))));
            }));
          },
          child: Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 2,
                    color: const Color(0xFFA600FF).withOpacity(0.25),
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color(0xFFddd6f3),
                    Color(0xFFfaaca8),
                  ],
                )),
            child: GridTile(
              footer: Center(
                child: index + 1 != gridCount
                    ? Text('0 / 10')
                    : Text('0 / ${(vocas.length - (gridCount - 1) * 10)}'),
              ),
              child: Center(
                  child: Text(
                (index + 1).toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              )),
            ),
          ),
        );
      }),
    );
  }
}
