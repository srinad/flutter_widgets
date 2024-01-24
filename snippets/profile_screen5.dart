import 'package:flutter/material.dart';

class ProfileScreen2 extends StatefulWidget {
  const ProfileScreen2({super.key});

  @override
  State<ProfileScreen2> createState() => _ProfileScreen2State();
}

class _ProfileScreen2State extends State<ProfileScreen2> {
  List<Map<String, dynamic>> title = [
    {
      'title': 'Ritu',
      'subtitle': 'My List',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfoHUCBnDs3oITk3ASlQEgsv6z2Gm0XwK5oA&usqp=CAU',
    },
    {
      'title': 'Dipti',
      'subtitle': 'Account',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvJaoIeJQU_V9rL_ZII61whWyqSFbmMgTgwQ&usqp=CAU',
    },
    {
      'title': 'Avinash',
      'subtitle': 'App Settings',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU',
    },
    {
      'title': 'Sharavan',
      'subtitle': 'Help',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3flIHsvZtK3eU7tEnp-LSEjNznTZCn0dkcA&usqp=CAU',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: Icon(
          Icons.keyboard_backspace,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Container(
              height: 110,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 2,
                                        strokeAlign:
                                            BorderSide.strokeAlignOutside,
                                        color: Color(0xFF979797),
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image.network(
                                        title[index]['image'],
                                        scale: 4.5,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: -7,
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3, horizontal: 3),
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: Icon(
                                        Icons.edit_outlined,
                                        color: Colors.black,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                title[index]['title'],
                                style: TextStyle(
                                  color: Color(0xFF979797),
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              SizedBox(height: 4),
                              Icon(
                                Icons.lock_outline,
                                color: Color(0xFF979797),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFF979797),
                          ),
                        ),
                        child:
                            Icon(Icons.add, color: Color(0xFF979797), size: 35),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Add',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 14,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 0, top: 16),
              child: Divider(
                color: Color.fromARGB(255, 100, 98, 98),
                thickness: 1.5,
              )),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 0, top: 30),
                child: Text(
                  title[index]['subtitle'],
                  style: TextStyle(
                    color: Color(0xFF979797),
                    fontSize: 14,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              );
            },
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 8, top: 0),
              child: Divider(
                color: Color.fromARGB(255, 100, 98, 98),
                thickness: 1.5,
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Color(0xFF1E1E1E),
                  context: context,
                  builder: (BuildContext context) {
                    // You can return any widget here for the content of the bottom sheet
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Container(
                              height: 4,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Color(0xFFAAAAAA),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR_KLTC28mD76_oDbbpCtVCX5MVIiyPJa-3P5QmqPvNE7f6xeT8',
                                      scale: 1.5,
                                    ),
                                  ),
                                  Positioned(
                                    top: 73,
                                    bottom: 73,
                                    right: 0,
                                    left: 0,
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFC50000),
                                      ),
                                      child: Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Stranger Things',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Icon(Icons.close, color: Colors.white)
                                      ],
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFC50000),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        SizedBox(width: 3),
                                        Text(
                                          '2022',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF909090),
                                            fontSize: 12,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFC50000),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          '4 Seasons',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF909090),
                                            fontSize: 12,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFC50000),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'U/A 16+',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF909090),
                                            fontSize: 12,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 9),
                                    Row(
                                      children: [
                                        Container(
                                          width: 4,
                                          height: 4,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFFC50000),
                                            shape: OvalBorder(),
                                          ),
                                        ),
                                        Text(
                                          'Action, Exciting, Emotional',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF979797),
                                            fontSize: 12,
                                            fontFamily: 'Mulish',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 9),
                                    SizedBox(
                                      width: 213,
                                      child: Text(
                                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Odio velit sed sagittis et interdum. Nibh lectus at in sit volutpat.',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontFamily: 'Mulish',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 16),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.info_outline,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 3),
                                            Text(
                                              'Episodes & Info',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_outlined,
                                          color: Color(0xFFC50000),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF303030),
                                      shape: OvalBorder(),
                                    ),
                                    child: Icon(Icons.download,
                                        color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    'Download',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF303030),
                                      shape: OvalBorder(),
                                    ),
                                    child:
                                        Icon(Icons.check, color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    'My List',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF303030),
                                      shape: OvalBorder(),
                                    ),
                                    child:
                                        Icon(Icons.share, color: Colors.white),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    'Share',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontFamily: 'Mulish',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text(
                'Sign Out',
                style: TextStyle(
                  color: Color(0xFF979797),
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
