

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';


 BoxShadow cBoxShadow =  BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 2,
                  color: const Color(0xFFA600FF).withOpacity(0.25),
                );



  LinearGradient cLinearGradient =const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFddd6f3),
                  Color(0xFFfaaca8),
                ],
              );