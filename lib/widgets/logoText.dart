import 'package:flutter/material.dart';

import '../app_colors.dart';

class Logotext extends StatelessWidget {
  const Logotext({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                AppColors.primaryColor,
                  AppColors.secondaryColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
              child: Text("LOGO",style: TextStyle(
                fontSize: 90,
              fontFamily: "prime",
              color: Colors.white
              
              ),),
            )
          ;
  }
}