import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
// ignore_for_file: must_be_immutable

class OtpScreen extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  OtpScreen({super.key, this.hintText});
  final hintText;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   height: 16.h,
                  // ),
                  Image.network(
                      'https://cdn.pixabay.com/photo/2017/03/16/21/18/logo-2150297_640.png'),
                  // LogoScreen(),
                  // SizedBox(
                  //   height: 15.h,
                  // ),
                  Form(
                    key: formKey,
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'OTP Verification',
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Enter the verification code we just sent on your Mobile number ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(height: 32),
                            Container(
                              height: 80,
                              child: OTPTextField(
                                length: 4,
                                width: MediaQuery.of(context).size.width,
                                fieldWidth: 50,
                                // spaceBetween: 0.001.w,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                                textFieldAlignment:
                                    MainAxisAlignment.spaceAround,
                                fieldStyle: FieldStyle.box,
                                onCompleted: (pin) {},
                              ),
                            ),
                            SizedBox(height: 40),
                            Center(
                                child: Container(
                                    height: 50.0,
                                    width: 300,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFFA575C),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10.0), // Set your border radius here
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text("Verify")))),
                            SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Didn't receive OTP?",
                                  style: TextStyle(
                                    fontSize: 11,
                                  ),
                                ),
                                Text(
                                  ' Resend',
                                  style: TextStyle(
                                      fontSize: 11, color: Color(0xFFFA575C)),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
