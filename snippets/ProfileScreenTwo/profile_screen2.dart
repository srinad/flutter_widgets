import 'package:example_widgets/ProfileScreenThree/profile_screen3.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileScreen2 extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  ProfileScreen2({
    super.key,
    thisintText,
  });
  final List text = [
    'Name',
    'Email',
    'Password',
    'User ID',
    'Zip Code',
  ];
  final List detailsText = [
    'Pavan Mathurthy',
    'pavan@gmail.com',
    '********',
    'pavan.m',
    '500000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green[200],
        leading: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.black,
        ),
        title: Text("Profile",style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 120,
                  color: Colors.green[200],
                ),
                Positioned(
                  bottom: -80,
                  right: 100,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Image.network(
                        'https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg',
                        scale: 4,
                        fit: BoxFit.fill,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text[index],
                        style: TextStyle(fontWeight: FontWeight.w700,color: Colors.white,),
                      ),
                      Container(
                        width: double.maxFinite,
                        child: TextFormField(
                            // controller: emailaddressController,
                            // focusNode: FocusNode(),2
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 1.50,
                            ),
                            keyboardType: TextInputType.emailAddress,
                            maxLines: 1,
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: detailsText[index],
                              hintStyle: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 1.50,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  20.00,
                                ),
                                borderSide: BorderSide.none,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color:  Colors.white,
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
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
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  );
                },
              ),
            ),
            Center(
              child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen3(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green[200],
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      child: Text(
                        "LogOut",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
