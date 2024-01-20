import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.00, 0.08),
          end: Alignment(-1, -0.08),
          colors: [Color(0xFF6D19F5), Color(0xFFF9408E)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Expanded(child: Container()),
            SingleChildScrollView(
              child: Container(
                padding:
                    EdgeInsets.only(top: 50, bottom: 20, left: 30, right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.white),
                child: Column(
                  children: [
                    Form(
                      // key:  formKey,
                      child: Container(
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 315,
                                  child: Text(
                                    'Please enter the OTP Recived by Mobile\nNumber you have entered.',
                                    style: TextStyle(
                                      color: Color(0xFFF7218E),
                                      fontSize: 15,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 30),
                                Container(
                                  height: 80,
                                  child: OTPTextField(
                                    otpFieldStyle: OtpFieldStyle(
                                        enabledBorderColor: Color(0xFF6D19F5),
                                        focusBorderColor: Color(0xFF6D19F5)),
                                    length: 4,
                                    width: MediaQuery.of(context).size.width,
                                    fieldWidth: 50,
                                    // spaceBetween: 0.001.w,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                    textFieldAlignment:
                                        MainAxisAlignment.spaceAround,
                                    fieldStyle: FieldStyle.box,
                                    onCompleted: (pin) {
                                      print("Completed: " + pin);
                                      // _userProvider.setEnteredOtp(pin);
                                    },
                                  ),
                                ),
                                SizedBox(height: 30),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xFF6C19F5),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: TextButton(
                                        onPressed: () {},
                                        style: TextButton.styleFrom(
                                            fixedSize: Size(
                                              double.maxFinite,
                                              20,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                20.00,
                                              ),
                                            )),
                                        child: Text(
                                          "Next",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    )),
                                SizedBox(height: 30),
                                Center(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Dont receive the code? ',
                                          style: TextStyle(
                                            color: Color(0xFF6C19F5),
                                            fontSize: 12,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'Resend (30s)',
                                          style: TextStyle(
                                            color: Color(0xFFF7218E),
                                            fontSize: 12,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
