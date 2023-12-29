import 'package:example_widgets/LoginScreenThree/login_screen3.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class LoginScreen2 extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  LoginScreen2({
    super.key,
    thisintText,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0XFF3A50C2),
            resizeToAvoidBottomInset: false,
            body: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(children: [
                          Image.network('https://img.freepik.com/premium-vector/healthcare-logo_10250-3455.jpg?w=2000',height: 60,width: 60,),
                          // CustomImageView(
                          //     imagePath: ImageConstant.imgHiDocLogo42x115,
                          //     height: 42.v,
                          //     width: 115),
                          SizedBox(height: 26),
                          Text(
                            "Welcome to HiDoc",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 12),
                          Text("Sign in to continue",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                          SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                              // controller: emailaddressController,
                              // focusNode: FocusNode(),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              maxLines: 1,
                              decoration: InputDecoration(
                                fillColor: Color(0XFFFFFFFF),
                                filled: true,
                                hintText: 'Your email',
                                prefixIcon: Icon(Icons.mail_outline_outlined),
                                hintStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0XFFEAEFFF),
                                    width: 1,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0XFFEAEFFF),
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0XFFF6FDFC),
                                    width: 1,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    20.00,
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                isDense: true,
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                              // controller: emailaddressController,
                              // focusNode: FocusNode(),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                              keyboardType: TextInputType.emailAddress,
                              maxLines: 1,
                              decoration: InputDecoration(
                                fillColor: Color(0XFFFFFFFF),
                                filled: true,
                                prefixIcon: Icon(Icons.lock_outline),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  color: Colors.blueGrey,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.50,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0XFFEAEFFF),
                                    width: 1,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0XFFEAEFFF),
                                    width: 1,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  borderSide: BorderSide(
                                    color: Color(0XFFF6FDFC),
                                    width: 1,
                                  ),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    20.00,
                                  ),
                                  borderSide: BorderSide.none,
                                ),
                                isDense: true,
                              )),
                              SizedBox(height: 30,),
                          Container(
                            height: 50,
                            width: double.maxFinite,
                            margin: EdgeInsets.only(right: 6),
                            child: OutlinedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0XFFFFFFFF),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => LoginScreen3(),
                              ),
                            );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox.shrink(),
                                  Text("Sign In",
                                      style: TextStyle(
                                          color: Color(0XFF3A50C2),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold)),
                                  const SizedBox.shrink(),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30,),
                          Text("Forgot Password?",style: TextStyle(color: Colors.white),),
                          SizedBox(height: 100,),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                              Text("Resigter",style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ])
                      ]),
                ),
              ),
            )));
  }
}
