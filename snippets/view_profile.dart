import 'package:flutter/material.dart';
import 'package:gofreshclone/EditProfile.dart';

class ViewProfile extends StatefulWidget {
  const ViewProfile({super.key});

  @override
  State<ViewProfile> createState() => _ViewProfileState();
}

class _ViewProfileState extends State<ViewProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          centerTitle: true,
          title: Text(
            'View Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF1A1A1A),
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          elevation: 1.0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
              ),
            ),
          ),
        ),
        body: Column(children: [
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
                          child: Row(children: [
                            GestureDetector(
                              onTap: () {
                                // Navigate to the next page here
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ViewProfile()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: ClipOval(
                                  child: Image.network(
                                    'https://images.pexels.com/photos/7898625/pexels-photo-7898625.jpeg?auto=compress&cs=tinysrgb&w=600',
                                    width: 50, // set your desired width
                                    height: 50, // set your desired height
                                    fit: BoxFit
                                        .cover, // or use BoxFit.fill, BoxFit.fitHeight, etc. as needed
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Pawan Sethu',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 20,
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 0.80,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 3, horizontal: 35),
                                      child: Text(
                                        'Edit Profile',
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
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 10,
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
                          ]))))),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 35),
              child: Text(
                'Mobile number',
                style: TextStyle(
                  color: Color(0xFF757575),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 305,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              ' +91',
                              style: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: Color(
                            0xFF757575), // Set the color of the vertical divider
                        width: 1,
                        endIndent: 6,
                        indent: 6, // Set the width of the vertical divider
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            maxLength: 10,
                            style: TextStyle(
                              color: Colors.white, // Set the text color to black
                            ), // Set the maximum length for the phone number
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '9008007006',
                              hintStyle: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                
                              border: InputBorder.none,
                              counterText: '', // Remove the counter text
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
           Container(
            alignment: Alignment.centerLeft,
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 30),
               child: Text(
                         'Alternate mobile number',
                         style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                           
                         ),
                       ),
             ),
           ),
           SizedBox(height: 10,),
           Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 305,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 80,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              ' +91',
                              style: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 18,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                      ),
                      VerticalDivider(
                        color: Color(
                            0xFF757575), // Set the color of the vertical divider
                        width: 1,
                        endIndent: 6,
                        indent: 6, // Set the width of the vertical divider
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            maxLength: 10,
                            style: TextStyle(
                              color: Colors.white, // Set the text color to black
                            ), // Set the maximum length for the phone number
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: '9008007006',
                              hintStyle: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                
                              border: InputBorder.none,
                              counterText: '', // Remove the counter text
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15,),
           Container(
            alignment: Alignment.centerLeft,
             child: Padding(
               padding: EdgeInsets.symmetric(horizontal: 30),
               child: Text(
                          'E-mail',
                         style: TextStyle(
                color: Color(0xFF757575),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                           
                         ),
                       ),
             ),
           ),
                      SizedBox(height: 10,),
           Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 305,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),

                  ),child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            maxLength: 10,
                            style: TextStyle(
                              color: Colors.white, // Set the text color to black
                            ), // Set the maximum length for the phone number
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'avinash@gmail.com',
                              hintStyle: TextStyle(
                                color: Color(0xFF757575),
                                fontSize: 14,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                
                              border: InputBorder.none,
                              counterText: '', // Remove the counter text
                            ),
                          ),
                        ),)
                  )
                  
                  ]),
                  SizedBox(height: 200,),
                  GestureDetector(
  onTap: () {
    // Navigate to the next page here
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EditProfile()),
    );
  },
                    child: Container(
                              width: 157,
                              height: 50,
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
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  children: [
                                    Icon(Icons.login_outlined),
                                    Text(
                                'Sign Out',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                      ),
                    
                                  ],
                                ),
                              ),),
                  )
        ]));
  }
}
