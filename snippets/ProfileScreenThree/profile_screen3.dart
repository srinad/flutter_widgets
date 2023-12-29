import 'package:example_widgets/HomeScreen/home_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileScreen3 extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  ProfileScreen3({
    super.key,
    thisintText,
  });
  final List text = [
    'Your Favorites',
    'Payment',
    'Tell your friend',
    'Promotions',
    'Setting',
  ];
  final List icons = [
    Icons.favorite_border,
    Icons.wallet,
    Icons.people_alt,
    Icons.discount_outlined,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Image.network(
                      'https://img.freepik.com/premium-vector/man-avatar-profile-picture-vector-illustration_268834-538.jpg',
                      scale: 4,
                      fit: BoxFit.fill,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mark Jukarburg",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "@mark.jukarburg",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "7622555222",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "mark@gmail.com",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        color: Colors.pink[100],
                        height: 80,
                        width: 150,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹ 5000",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Wallet",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        color: Colors.pink[100],
                        height: 80,
                        width: 150,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Orders",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        child: Row(
                          children: [
                            Icon(
                              icons[index],
                              size: 20,
                              color: Colors.pink[100],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              text[index],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.power_settings_new_outlined,
                          size: 20,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "LogOut",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
