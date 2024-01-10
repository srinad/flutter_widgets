import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomeScreenSev extends StatelessWidget {
  TextEditingController emailaddressController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  HomeScreenSev({
    super.key,
    thisintText,
  });
  List<Map<String, dynamic>> imageNames = [
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9Xo1e96KXZxGA1bMxaMOPEJsyZYp2BFGLg&usqp=CAU',
      'name': 'Jessica',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU',
      'name': 'Micheal',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjl7xYqho8VFxvJSR9heh8UTerI6FW4KDbxA&usqp=CAU',
      'name': 'Bhavitha',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbfKhOuGk_Ag_8BBQ5Kc0xi1pAXxGNGP9JYQ&usqp=CAU',
      'name': 'Amulya',
    },
    {
      'imagePath':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSR-dez27VzWPTKhNi5kQf-aNDxuBo1LQ1-Q&usqp=CAU',
      'name': 'Dinesh',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 60,
          leading: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
          ),
          backgroundColor: Colors.transparent,
          title: Text(
            "Instagram",
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
          titleSpacing: 0,
          centerTitle: true,
          actions: [
            Padding(
                padding: const EdgeInsets.only(
                  right: 1.0,
                ),
                child: Image.network(
                  'https://i.pinimg.com/736x/88/29/a7/8829a78269bb7cfd3ec1d5f522ff42bf.jpg',
                  scale: 22,
                )),
          ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stories",
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                  Row(
                    children: [
                      Text(
                        "Watch All",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            ClipOval(
                                child: Image.network(
                              'https://images.pexels.com/photos/678783/pexels-photo-678783.jpeg?cs=srgb&dl=pexels-sebastian-libuda-678783.jpg&fm=jpg',
                              fit: BoxFit.cover,
                              width: 60, // Adjust the size as needed
                              height: 60,
                            )),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Icon(
                                  Icons.add_circle,
                                  color: Colors.orange,
                                ))
                          ],
                        ),
                         SizedBox(
                                height: 2,
                              ),
                        Text("You",style: TextStyle(fontSize: 12,color: Colors.grey),)
                      ],
                    ),
                    SizedBox(width: 5,),
                    Container(
                      height: 80,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 4),
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.pink, width: 1.5),
                                    borderRadius: BorderRadius.circular(30)),
                                child: ClipOval(
                                    child: Image.network(
                                  imageNames[index]['imagePath'],
                                  fit: BoxFit.cover,
                                  width: 55, // Adjust the size as needed
                                  height: 55,
                                )),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text(imageNames[index]['name'],style: TextStyle(fontSize: 10,color: Colors.grey),)
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipOval(
                                  child: Image.network(
                                'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                                fit: BoxFit.cover,
                                width: 40, // Adjust the size as needed
                                height: 40,
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Priya_12",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Madhapur, Hyderabad",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(Icons.more_horiz_outlined)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1497316730643-415fac54a2af?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D',
                      scale: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  // Icon(Icons.favorite_border),
                                  // Icon(Icons.comment),
                                  Image.network(
                                    'https://static.thenounproject.com/png/2479936-200.png',
                                    scale: 7,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.network(
                                    'https://cdn0.iconfinder.com/data/icons/social-media-logo-4/32/Social_Media_instagram_comment-512.png',
                                    scale: 15,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.network(
                                    'https://i.pinimg.com/736x/88/29/a7/8829a78269bb7cfd3ec1d5f522ff42bf.jpg',
                                    scale: 20,
                                  )
                                ],
                              ),
                              Icon(Icons.bookmark_border_outlined),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text("1,555 likes"),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Text(
                                "we_are_legends",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "#menowhere",
                                style: TextStyle(color: Colors.blue[900]),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "view all 3 comments",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "3 hours ago",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "See Translation",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
