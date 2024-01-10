import 'package:flutter/material.dart';

class HomeScreen3 extends StatefulWidget {
  const HomeScreen3({super.key});

  @override
  State<HomeScreen3> createState() => _HomeScreen3State();
}

class _HomeScreen3State extends State<HomeScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              )),
          child: Column(
            children: [
              SizedBox(height: 16),
              Row(
                children: [
                  ClipOval(
                      child: Image.network(
                    'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                    fit: BoxFit.cover,
                    width: 50, // Adjust the size as needed
                    height: 50,
                  )),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Jonas!',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      Text(
                        'What you want to try today?',
                        style: TextStyle(
                            color: Colors.white,
                            // fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 35),
              TextField(
                cursorColor: Colors.black,
                // controller: _textController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 18,
                  ),
                  hintText: 'Find your favourite course',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Course Category',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 3, 9, 39),
                      // fontWeight: FontWeight.w500,
                      fontSize: 16),
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    // crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQESWuXijfYgfXQkgg_8aRaVUW5oppzA5YgK88T_XRofnYZPoQm',
                            scale: 1,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Business')
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x28000000),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 5,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(13)),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Course List',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 3, 9, 39),
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.network(
                                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQESWuXijfYgfXQkgg_8aRaVUW5oppzA5YgK88T_XRofnYZPoQm',
                                scale: 5,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Administration',
                                    style: TextStyle(
                                        color: Colors.black,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    'Data Mining for Business',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        // fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'Started',
                            style: TextStyle(
                                color: Colors.green,
                                // fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
