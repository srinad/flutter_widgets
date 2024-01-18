import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<Map<String, dynamic>> imagetitle = [
    {
      'image':'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRzmnFSbRd5HrsapK2iYriToT4jGg6w4cqqjJ1TW5x1UOlQQmt7',
      'title': 'Order history',
    },
    {
      'image': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRRSjA2HSfvArn50G1oYvNzzZpL-GXOc3QmtZk2jcgbc9yWMvnz',
      'title': 'My address',
    },
    {
      'image':
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSMZNPEeAoqAMRFMYgHMkxpfO9XBgQugTFjEik5bolLFyYnZjMp',
      'title': 'My Cart',
    },
    {
      'image':
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT0SQVpZPuyQX7jGGlbN2IHqsAiYy3U1tHQ7i42FIoyuP9USwZe',
      'title': 'Share app',
    },
  ];
  List<Map<String, dynamic>> imagetitle2 = [
    {
      'image': 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcT6BoBWDuQmXgJXxYUO1GWwQXS8JX1wWQpzEYztefHDt4HI2gBJ',
      'title': 'Support/ Chat with us',
    },
    {
      'image': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRzmnFSbRd5HrsapK2iYriToT4jGg6w4cqqjJ1TW5x1UOlQQmt7',
      'title': 'Privacy & policy',
    },
    {
      'image':
          'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQQMCkuttOcb-hFWMNiiYNfncYNcGslQHdLdIM-st4tjwsnX9c8',
      'title': 'Terms & conditions',
    },
    {
      'image':
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRT2KftXp5YTSS1NgqwXDJMKZCjYvxrNh6zDOqWK7ibQ57SvTTW',
      'title': 'Logout',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(236, 255, 252, 1),
        title: Text(
          'Profile',
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        leading: Transform.scale(
          scale: 0.6,
          child: Container(
              width: 36,
              height: 36,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0XFF757575)),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: IconButton(
                  onPressed: () {
                    // Twl.navigateBack(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: 30,
                  ))),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0XFFE5E5E5), width: 4)
                      // borderRadius: BorderRadius.circular(0)

                      ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvJaoIeJQU_V9rL_ZII61whWyqSFbmMgTgwQ&usqp=CAU',
                      scale: 2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Amulya',
                  style: GoogleFonts.lexend(
                    fontSize: 19,
                  ),
                ),
                Text(
                  'abcdefghijk@gmail.com',
                  style: GoogleFonts.lexend(
                    color: Color(0XFF757575),
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFA575C),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_square,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Edit Profile',
                            style: GoogleFonts.lexend(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                    // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: DottedDashedLine(
                            height: 5,
                            width: 45,
                            axis: Axis.horizontal,
                            dashColor: Color.fromARGB(255, 205, 203, 203),
                            dashWidth: 6,
                            strokeWidth: 0.3,
                          ),
                        );
                      },
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.network(imagetitle[index]['image'],scale: 8)),
                            backgroundColor:
                                Color(0xFFFA575C).withOpacity(0.1),
                          ),
                          title: Text(imagetitle[index]['title']),
                        );
                      },
                    )),
                SizedBox(height: 10),
                Container(
                    // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          child: DottedDashedLine(
                            height: 5,
                            width: 45,
                            axis: Axis.horizontal,
                            dashColor: Color.fromARGB(255, 205, 203, 203),
                            dashWidth: 6,
                            strokeWidth: 0.3,
                          ),
                        );
                      },
                      itemCount: 4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(60),
                              child: Image.network(imagetitle2[index]['image'],scale: 8,)),
                            backgroundColor:
                                Color(0xFFFA575C).withOpacity(0.1),
                          ),
                          title: Text(imagetitle2[index]['title']),
                        );
                      },
                    )),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
