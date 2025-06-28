import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ionicons/ionicons.dart';
import 'package:login_signup/app_colors.dart';
import 'package:login_signup/screens/register.dart';
import 'package:login_signup/widgets/CustomtextSmall.dart';
import 'package:login_signup/widgets/custom_textField.dart';
import 'package:login_signup/widgets/customeButton.dart';
import 'package:login_signup/widgets/logoText.dart';

import '../widgets/CustomtextBig.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 135,
                ),
                Center(child: Logotext()),
                Customtextbig(
                  text: "Welcome Back !",
                ),
                CustomtextSmall(text: "Log in to existing LOGO account"),
                SizedBox(
                  height: 18,
                ),
                CustomTextfield(
                  "Username",
                  Icons.person_outline_outlined,
                  usernameController,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextfield(
                  "Password",
                  Icons.lock_outline,
                  passwordController,
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
             Customebutton(text: "Log In"),
                  // Add your login logic here
                
                SizedBox(
                  height: 15,
                ),
                Text("Or sign up using ",style: TextStyle(fontSize: 12),),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Ionicons.logo_facebook, size: 30, color: Colors.blue),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(Ionicons.logo_google, size: 30, color: Colors.orange),
                     SizedBox(
                      width: 30,
                    ),
                    Icon(Ionicons.logo_apple, size: 30, color: Colors.black),
                     
                  ],
                ),
              SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                 GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Register())),
                   child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                 ),
                 
                 
                  ],
                ),      
              
              ],
            ),
          ),
        ),
        Positioned(
          left: 45,
          child: SvgPicture.asset("images/Rectangle 12.svg"),
        ),
        Positioned(child: SvgPicture.asset("images/Rectangle 11.svg")),
      ],
    );
  }
}
