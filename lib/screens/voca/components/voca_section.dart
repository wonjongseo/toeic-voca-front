import 'package:flutter/material.dart';
import 'package:jongseo_toeic/constants/constatns.dart';
import 'package:jongseo_toeic/screens/voca/vocas_screen.dart';

class VocaSection extends StatelessWidget {
  const VocaSection({super.key, required this.vocas});
  final List<Map<String, String>> vocas;

  @override
  Widget build(BuildContext context) {
    int gridCount = vocas.length % 10 == 0
        ? (vocas.length / 10).floor()
        : (vocas.length / 10).ceil();

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
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisCount: 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
        children: List.generate(gridCount, (index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Vocas(
                      vocas: index + 1 != gridCount
                          ? vocas.sublist((index * 10), (index * 10 + 10))
                          : vocas.sublist(
                              (index * 10),
                              (index * 10 +
                                  (vocas.length - (gridCount - 1) * 10)),
                            ),
                    );
                  },
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(8.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: [cBoxShadow],
                gradient: cLinearGradient,
              ),
              child: GridTile(
                footer: Center(
                  child: index + 1 != gridCount
                      ? Text('0 / 10')
                      : Text('0 / ${(vocas.length - (gridCount - 1) * 10)}'),
                ),
                child: Center(
                    child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                )),
              ),
            ),
          );
        }),
      ),
    );
  }
}
