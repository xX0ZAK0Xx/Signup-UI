import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_page/screens/login.dart';
import 'package:signup_page/screens/otp.dart';
import 'package:signup_page/widgets/input-field.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  TextEditingController _phoneNumber = TextEditingController();
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
            // ----------- header info -----------
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Please enter your ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff151940),
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: "phone number ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff151940),
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: "and ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff151940),
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: "location ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff151940),
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: "so we can verify you.",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        color: Color(0xff151940),
                        fontSize: 18),
                  ),
                ],
              ),
            ),
            //-------------Location-------------
            SizedBox(
              height: 3,
            ),
            Text(
              "Enter your location",
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff151940)),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 53,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(46, 158, 158, 158),
                    blurRadius: 20.0,
                    spreadRadius: 5,
                    offset: Offset(0.0, 2.0),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/bd.png'),
                        height: 21,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 1,
                        height: 31,
                        color: Color(0xffDEDEDE),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Bangladesh",
                        style: GoogleFonts.inter(
                            fontSize: 15,
                            color: Color(0xff7F8192),
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    color: Color(0xff7F8192),
                    size: 40,
                  ),
                ],
              ),
            ),

            //---------------------Credentials------------------------
            Text(
              "Enter your Phone Number",
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff151940)),
            ),
            Container(
              child: Column(children: [
                InputBox(
                  controller: _phoneNumber,
                  text: "",
                  isPass: false,
                  id: 1,
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
                    builder: (context) => OTPVerify(
                      phoneNumber: _phoneNumber.text,
                    ),
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
                    "Register",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
                    color: Color.fromARGB(255, 85, 90, 96),
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
            SizedBox(
              height: 5,
            ),
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
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
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
