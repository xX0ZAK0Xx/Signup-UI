import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_page/screens/login.dart';
import 'package:signup_page/screens/phone-verification.dart';
import 'package:signup_page/widgets/checkbox.dart';
import 'package:signup_page/widgets/input-field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password1 = TextEditingController();
  TextEditingController _password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register",
              style: GoogleFonts.sourceSans3(
                fontSize: 44,
                fontWeight: FontWeight.w600,
              ),
            ),
            //--------------google button--------
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 53,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 246, 250),
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "GOOGLE",
                    style: GoogleFonts.inter(
                      color: Color.fromARGB(255, 21, 25, 64),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            //--------------or------------------

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 62,
                  height: 1,
                  color: Color.fromARGB(130, 72, 100, 132),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "or",
                  style: GoogleFonts.inter(
                    color: Color(0xff486484),
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 62,
                  height: 1,
                  color: Color.fromARGB(130, 72, 100, 132),
                )
              ],
            ),
            //------------- Credentials --------------------------------
            Container(
              child: Column(children: [
                InputBox(
                  controller: _name,
                  text: "Full name",
                  isPass: false,
                  id: 1,
                ),
                SizedBox(height: 15),
                InputBox(
                  controller: _email,
                  text: "Enter Email Address",
                  isPass: false,
                  id: 2,
                ),
                SizedBox(height: 15),
                InputBox(
                  controller: _password1,
                  text: "Password",
                  isPass: true,
                  id: 3,
                ),
                SizedBox(height: 15),
                InputBox(
                  controller: _password2,
                  text: "Confirm Password",
                  isPass: true,
                  id: 4,
                ),
                SizedBox(height: 15),
                //----------------Agreement------------------------
                Row(
                  children: [
                    CustomCheckBox(),
                    SizedBox(
                      width: 5,
                    ),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "I’ve read and agree to the ",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xff7F8192),
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: "terms ",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xff314BCE),
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: "of ",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xff7F8192),
                            fontWeight: FontWeight.w400),
                      ),
                      TextSpan(
                        text: "privacy policy",
                        style: GoogleFonts.inter(
                            fontSize: 12,
                            color: Color(0xff314BCE),
                            fontWeight: FontWeight.w700),
                      ),
                    ]))
                  ],
                ),
              ]),
            ),
            //----------------Register--------------------------------
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PhoneVerification(),
                  ),
                );
              },
              child: Container(
                height: 56,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff5771F9),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff5771F9).withOpacity(0.4),
                      blurRadius: 15.0,
                      offset: Offset(3.0, 3.0),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            //----------------Go to SignIn--------------------------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Already have an account",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff151940)),
                ),
                SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "L O G I N",
                        style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff314BCE)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward_rounded,
                        color: Color(0xff314BCE),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
