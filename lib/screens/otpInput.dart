import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OTPInputVerify extends StatelessWidget {
  final String phoneNumber;
  const OTPInputVerify({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
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
                text: "Check your SMS inbox, we have sent you the code at ",
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
              TextSpan(
                text: phoneNumber,
                style: GoogleFonts.inter(
                    fontWeight: FontWeight.w700,
                    color: Color(0xff151940),
                    fontSize: 18),
              ),
            ])),
            SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff5771F9),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff5771F9).withOpacity(0.3),
                        blurRadius: 20.0,
                        offset: Offset(0, 3.0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "8",
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color(0xff314BCE).withOpacity(0.14),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xff314BCE)),
                    ),
                    child: Center(
                      child: Text(
                        "5",
                        style: GoogleFonts.inter(
                            color: Color(0xff314BCE),
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color:
                          Color.fromARGB(255, 183, 193, 244).withOpacity(0.14),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "2",
                        style: GoogleFonts.inter(
                            color: Color(0xff151940),
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color:
                          Color.fromARGB(255, 183, 193, 244).withOpacity(0.14),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "3",
                        style: GoogleFonts.inter(
                            color: Color(0xff151940),
                            fontSize: 40,
                            fontWeight: FontWeight.w700),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "(00:52)",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff5771F9),
                  fontSize: 13),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "This session will end in 60 seconds.",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff486484),
                  fontSize: 13),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Didn’t receive a code? ",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff486484),
                      fontSize: 13),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Resend Code",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color: Color(0xff5771F9),
                      fontSize: 13,
                      decoration: TextDecoration.underline,
                    ),
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
