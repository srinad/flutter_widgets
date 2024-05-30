import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<IconData> yourIconDataList = [
    Icons.card_giftcard,
    Icons.person,
    Icons.help,
    Icons.feedback,
    Icons.pattern_rounded,
    Icons.free_cancellation,
    Icons.carpenter_sharp,
    Icons.subscriptions,
    Icons.language,
    Icons.notification_add,
    Icons.abc_outlined,
  ];
  List<String> profile = [
    'Saved cards',
    'Refer and earn',
    'Help',
    'Share your feedback',
    'Apply for partner',
    'Apply for franchise',
    'Careers',
    'Submissions',
    'English',
    'Notifications settings',
    'About',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          title: Text(
            'Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          elevation: 1.0, // Set the elevation value as per your requirement
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 345,
                      height: 94,
                      decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(9)),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 6,
                              offset: Offset(0, 1),
                              spreadRadius: 0,
                            )
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: ClipOval(
                                child: Image.network(
                                  'https://images.pexels.com/photos/7898625/pexels-photo-7898625.jpeg?auto=compress&cs=tinysrgb&w=600',
                                  width: 70, // set your desired width
                                  height: 70, // set your desired height
                                  fit: BoxFit
                                      .cover, // or use BoxFit.fill, BoxFit.fitHeight, etc. as needed
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Pawan Sethu',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 20,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                        letterSpacing: 0.80,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 3),
                                      child: Text(
                                        'View profile',
                                        style: TextStyle(
                                          color: Color(0xFF1E90FF),
                                          fontSize: 12,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 14,
                                ),
                                Text(
                                  'pawan@gmail.com',
                                  style: TextStyle(
                                    color: Color(0xFF757575),
                                    fontSize: 12,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '+91 9000000123',
                                      style: TextStyle(
                                        color: Color(0xFF757575),
                                        fontSize: 12,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 33,
                                    ),
                                    Text(
                                      'Member since 2022',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  children: [
                    Container(
                      width: 105,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '₹',
                                    style: TextStyle(
                                      color: Color(0xFFEB236B),
                                      fontSize: 22,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '150',
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 22,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'My Wallet',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF1A1A1A),
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 105,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.favorite,
                            color: Colors.pink,
                            size: 25,
                          ),
                          Text(
                            'Favorites',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 105,
                      height: 80,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 6,
                            offset: Offset(0, 1),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on_outlined),
                          Text(
                            'My Address',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1A1A1A),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 345,
                height: 588,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x19000000),
                      blurRadius: 6,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Container(
                  child: ListView.builder(
  physics: NeverScrollableScrollPhysics(),
  shrinkWrap: true,
  itemCount: 11,
  itemBuilder: (BuildContext context, int index) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          child: Row(
            children: [
              Icon(
                yourIconDataList[index],
                color: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(profile[index]),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ],
          ),
        ),
        
         Container(
          width: 345,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.50,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFD9D9D9),
              ),
            ),))
      ],
    );
  },
),
                ),
              ),
              SizedBox(height: 24,),
              Container(
          width: 345,
          height: 58,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: [
              BoxShadow(
                color: Color(0x28000000),
                blurRadius: 4,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child: Row(
            children: [
              Icon(Icons.mobile_screen_share_sharp,size: 30,),
              SizedBox(width: 10,),
                      Text(
          '1.233 version update Available',
          style: TextStyle(
            color: Color(0xFF1A1A1A),
            fontSize: 13,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(width: 24,),
        Container(
          width: 84,
          height: 30,
          decoration: ShapeDecoration(
            color: Color(0xFF1E90FF),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            shadows: [
              BoxShadow(
                color: Color(0x28000000),
                blurRadius: 4,
                offset: Offset(0, 1),
                spreadRadius: 0,
              )
            ],
          ),
          child:  Center(
            child: Text(
            'Update',
            style: TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
                    ),
          ),
        )
            ],
          ),
        ),
       SizedBox(height: 20,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Row(
            children: [
               Container(
                         width: 22,
                         height: 22,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSA1ssGUJCLWaMSTrgUyg9FWjMScEeuWzX_0A&usqp=CAU"),
                fit: BoxFit.cover,
                           ),
                         ),),
                         SizedBox(width: 10,),
                Container(
            width: 22.76,
            height: 22,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7zTyVz8gyeFBXNFNC_TJ2mdKZXMUiY6LoFg&usqp=CAU"),
                fit: BoxFit.fill,
              ),
            ),),
              SizedBox(width: 10,),
             Container(
          width: 23.52,
          height: 22,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5WsJfaSjrkUtTvOA_NTcxrtfIAuu0Ua6lEg&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),),
          SizedBox(width: 10,),
           Container(
          width: 22.76,
          height: 22,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-dxFmlfFORUvWhqwo9j12Q7Mv48sYaO448w&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),),
          SizedBox(width: 10,),
          Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDCAWEV61c2QjV-sjdySiIyEs38LPtImwjEQ&usqp=CAU"),
              fit: BoxFit.cover,
            ),
          ),)
            ],
          ),
        ),
        SizedBox(height: 20,),
        Text(
          'V 1.211   Application ID :  8605611012',
          style: TextStyle(
            color: Color(0xFF757575),
            fontSize: 12,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w400,
            height: 0,
          ),)
            ],
          ),
        ));
  }
}
