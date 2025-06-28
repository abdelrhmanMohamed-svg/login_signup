import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield(this.hintText, this.icon, this.controller);
final TextEditingController controller ;
final String hintText;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
            controller: controller,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                     icon,
                      color:Colors.black,
                    ),
                    filled: true,
                    fillColor: Color(0xFFF2F2F2),
                   border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      
                      borderSide: BorderSide(
                        color: Colors.grey.shade500,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                      ),
                    ),
                    hintText: hintText,
                   
                  ),
                );
  }
}