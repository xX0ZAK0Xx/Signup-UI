import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      title: 'Create Account',
      home: const SignupPage(),
    );
  }
}

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
                InputBox(controller: _name, text: "Full name", isPass: false),
                SizedBox(height: 15),
                InputBox(
                    controller: _email,
                    text: "Enter Email Address",
                    isPass: false),
                SizedBox(height: 15),
                InputBox(
                    controller: _password1, text: "Password", isPass: true),
                SizedBox(height: 15),
                InputBox(
                    controller: _password2,
                    text: "Confirm Password",
                    isPass: true),
                SizedBox(height: 15),
                //----------------Agreement------------------------
                Row(
                  children: [
                    CustomCheckBox(),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "I’ve read and agree to the ",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0xff7F8192),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "terms ",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0xff314BCE),
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "of ",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0xff7F8192),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "privacy policy",
                      style: GoogleFonts.inter(
                          fontSize: 12,
                          color: Color(0xff314BCE),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ]),
            ),
            //----------------Register--------------------------------
            SizedBox(height: 5),
            RegisterButton(),
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
                Text(
                  "LOGIN",
                  style: GoogleFonts.inter(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff314BCE)),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff5771F9),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color(0xff5771F9).withOpacity(0.4),
              blurRadius: 15.0, // Adjust blur radius for desired shadow effect
              offset:
                  Offset(3.0, 3.0), // Adjust offset for desired shadow position
            ),
          ],
        ),
        child: Center(
          child: Text(
            "Register",
            style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isChecked = !isChecked;
      }),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: isChecked ? Color.fromARGB(79, 49, 75, 206) : Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Color(0xff314BCE), width: 1.0),
        ),
      ),
    );
  }
}

class InputBox extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final bool isPass;

  const InputBox({
    Key? key,
    required this.controller,
    required this.text,
    required this.isPass,
  }) : super(key: key);

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  bool _obscureText = true; // Local state to handle the visibility of the text

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 246, 250),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        cursorColor: Colors.black,
        controller: widget.controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(16.0), // Add left padding
          focusColor: Color(0xff314BCE),
          suffixIcon: widget.isPass
              ? IconButton(
                  icon: _obscureText
                      ? Icon(
                          Icons.visibility_off,
                          color: Color(0xff7F8192),
                        )
                      : Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // Toggle local state
                    });
                  },
                )
              : null,
          hintText: widget.text,
          border: InputBorder.none,
          // focusedTextColour: Color(0xff314BCE),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff314BCE),
              width: 1.0,
            ), // Set focused border color and width
          ),
        ),
        obscureText: widget.isPass ? _obscureText : false,
      ),
    );
  }
}
