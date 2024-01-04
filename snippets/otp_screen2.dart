import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
// ignore_for_file: must_be_immutable

class OtpScreenTwo extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  OtpScreenTwo({super.key, this.hintText});
  final hintText;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 4, 0, 56),
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "OTP Verification",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        // style: AppStyle.txtPoppinsMedium24
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 12),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "6 digit code has been sent to",
                                    style: TextStyle(
                                      // color: ColorConstant.blueGray100,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    )),
                                TextSpan(
                                    text: "xyz@gmail.com ",
                                    style: TextStyle(
                                      // color: ColorConstant.whiteA700,
                                      fontSize: 14,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      // letterSpacing: getHorizontalSize(0.14)
                                    ))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 50, right: 19),
                        child: OTPTextField(
                          length: 6,
                          width: MediaQuery.of(context).size.width,
                          fieldWidth: 40,
                          otpFieldStyle: OtpFieldStyle(
                              backgroundColor:
                                  const Color.fromARGB(255, 88, 87, 87),
                              // enabledBorderColor: Colors.white,
                              focusBorderColor: Colors.white),
                          // spaceBetween: 0.001.w,
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldStyle: FieldStyle.box,
                          onCompleted: (pin) {},
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                          child: Container(
                              height: 50.0,
                              width: 320,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFFA575C),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          25.0), // Set your border radius here
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text("Verify")))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(top: 47, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Didn’t receive the OTP ?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(color: Colors.white),
                                      // style: AppStyle
                                      //     .txtPoppinsRegular14Bluegray100a2
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: Text(
                                          "Resend",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                          // style: AppStyle.txtPoppinsMedium14
                                          //     .copyWith(
                                          //         decoration: TextDecoration
                                          //             .underline)
                                        ))
                                  ])))
                    ]))));
  }
}
