import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:login_signup/screens/signUp.dart';
import 'package:login_signup/widgets/CustomtextBig.dart';
import 'package:login_signup/widgets/CustomtextSmall.dart';
import 'package:login_signup/widgets/custom_textField.dart';
import 'package:login_signup/widgets/customeButton.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController firstName = TextEditingController();
    final TextEditingController lastName = TextEditingController();
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();
    final TextEditingController confirmPassword = TextEditingController();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(children: [
            SizedBox(
              height: 80,
            ),
            Customtextbig(text: "Lets Get Started!"),
            Text(
              "Create an account on MNZL to get all features",
              style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
            ),
            SizedBox(
              height: 40,
            ),
            CustomTextfield(
                "First Name", Icons.person_outline_outlined, firstName),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
                "Last Name", Icons.person_outline_outlined, lastName),
            SizedBox(
              height: 25,
            ),
            CustomTextfield("Email", Icons.person_outline_outlined, email),
            SizedBox(
              height: 25,
            ),
            CustomTextfield(
                "Password", Icons.person_outline_outlined, password),
            SizedBox(
              height: 25,
            ),
            CustomTextfield("Confirm Password", Icons.person_outline_outlined,
                confirmPassword),
            SizedBox(
              height: 25,
            ),
            Customebutton(text: "Create Account"),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup())),
                  child: Text(
                    "Login here",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
