import 'package:flutter/material.dart';

class MovieFlix extends StatefulWidget {
  const MovieFlix({super.key});

  @override
  State<MovieFlix> createState() => _MovieFlixState();
}

class _MovieFlixState extends State<MovieFlix> {
  List<Map<String, dynamic>> title = [
    {
      'title': 'Ritu',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfoHUCBnDs3oITk3ASlQEgsv6z2Gm0XwK5oA&usqp=CAU',
    },
    {
      'title': 'Dipti',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvJaoIeJQU_V9rL_ZII61whWyqSFbmMgTgwQ&usqp=CAU',
    },
    {
      'title': 'Avinash',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC8kiSH5ZSAcVoj3tAQQDoP_ux0sSricMyUg&usqp=CAU',
    },
    {
      'title': 'Sharavan',
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
          'MovieFlix',
          style: TextStyle(
              color: Color(0xFFC50000),
              fontSize: 25,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 60),
          Center(
            child: Text(
              'Who’s Watching?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          SizedBox(height: 25),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.2,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
              ),
              itemBuilder: (context, index) {
                  double containerSize = 80.0; 
                if (index == 4 || index == 5) {
                  // Use icons for items with index 4 and 5
                  IconData iconData = (index == 4)
                      ? Icons.add
                      : Icons.edit; // Choose any icon you prefer
          
                  return Column(
                    children: [
                      Container(
                        height: containerSize,
                        width: containerSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 66, 64, 64),
                        ),
                        child: ClipOval(
                          child: Center(
                            child: Icon(
                              iconData,
                              size: 40,
                              color: Color(0xFF979797),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        (index == 4) ? 'Add' : 'Edit',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  );
                } else {
                  // Use the original content for other items
                  return Column(
                    children: [
                      Container(
                        height: containerSize,
                        width: containerSize,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignOutside,
                            color: Color(0xFF979797),
                          ),
                        ),
                        child: ClipOval(
                          child: Image.network(
                            title[index]['image'],
                            scale: 2.5,
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            title[index]['title'],
                            style: TextStyle(
                              color: Color(0xFF979797),
                              fontSize: 18,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.lock_outline,
                            color: Color(0xFF979797),
                          )
                        ],
                      ),
                    ],
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
