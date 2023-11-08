import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signup_page/widgets/input-field.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _email = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //----------back button--------------
            GestureDetector(
              onTap: () {
                Navigator.pop(
                    context); // No need to assign the result to a variable
              },
              child: Container(
                height: 47,
                width: 47,
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
                child: Center(
                    child: Icon(
                  Icons.arrow_back_rounded,
                  size: 16,
                )),
              ),
            ),
            //----------OTP----------
            SizedBox(
              height: 70,
            ),
            Text(
              "Verify Code",
              style: GoogleFonts.yaldevi(
                  fontSize: 44,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff151940)),
            ),
            SizedBox(
              height: 15,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Please enter your ",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
              TextSpan(
                text: "email address ",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
              TextSpan(
                text: "or ",
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
                text: "to reset your password",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
            ])),
            SizedBox(
              height: 40,
            ),
            InputBox(
              controller: _email,
              text: 'Enter Email Address',
              isPass: false,
              id: 1,
            ),
            SizedBox(
              height: 40,
            ),
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
                    "Send",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
