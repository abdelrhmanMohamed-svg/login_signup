import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_signup/app_colors.dart';
import 'package:login_signup/widgets/CustomtextSmall.dart';
import 'package:login_signup/widgets/logoText.dart';

import '../widgets/CustomtextBig.dart';
import 'signUp.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Signup(); 
            })));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Logotext(),
                Image.asset("images/pic1.png"),
                Customtextbig(
                  text: "Lorem Ipsum",
                ),
                SizedBox(
                  height: 5,
                ),
               CustomtextSmall(text: "Lorem Ipsum is a dummy text \n used as placeholder",),
               
               
              
              ],
            ),
          ),
        ),
        Positioned(
            left: 50,
            bottom: 390,
            top: 0,
            child: SvgPicture.asset("images/line.svg")),
        Positioned(
            left: 24,
            bottom: 330,
            top: 246,
            child: SvgPicture.asset("images/light.svg")),
        Positioned(
            left: 115,
            bottom: 430,
            top: 0,
            child: SvgPicture.asset("images/line.svg")),
        Positioned(
            left: 88,
            bottom: 330,
            top: 180,
            child: SvgPicture.asset("images/light.svg")),
      ],
    );
  }
}
