import 'package:flutter/material.dart';
import 'package:login_signup/app_colors.dart';

class Customebutton extends StatelessWidget {
  const Customebutton({super.key, required this.text});
final String text;

  @override
  Widget build(BuildContext context) {
    return     Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                    gradient: LinearGradient(
                      colors: [
                        AppColors.primaryColor,
                        AppColors.secondaryColor,
                      ],
                    ),
                  ),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
  }
}