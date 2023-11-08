import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_page/screens/forgotPass.dart';
import 'package:signup_page/screens/sign-up.dart';
import 'package:signup_page/widgets/input-field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

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
              "Log In",
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
                  controller: _email,
                  text: "Enter Email Address",
                  isPass: false,
                  id: 2,
                ),
                SizedBox(height: 15),
                InputBox(
                  controller: _password,
                  text: "Password",
                  isPass: true,
                  id: 3,
                ),
                SizedBox(height: 15),
                //----------------Forget------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ForgotPass()),
                        );
                      },
                      child: Text(
                        "Forgot Password?",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff5771F9),
                          fontSize: 13,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            //----------------Register--------------------------------
            GestureDetector(
              onTap: () {},
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
                    "Log In",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 90),
            //----------------Go to SignIn--------------------------------

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Don’t have an account?",
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
                      builder: (context) => SignupPage(),
                    ),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "R E G I S T E R",
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
