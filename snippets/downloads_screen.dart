
import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  List<Map<String, dynamic>> imagestitle = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6NJPzFe3J9BsIlNhegr2GEouowpICvmlKwg&usqp=CAU',
      'text': 'Stranger Things',
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAd2_MeHCQltTc0bI9gN47bu1xNP_9XyERzTYoYNYxG0h0pJb-E3AnowkYvxjPKHnL-aQ&usqp=CAU',
      'text': 'Peaky Blinders',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1E1E1E),
        title: Text(
          'Downloads',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15, left: 10, top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '24.0 GB Available',
                  style: TextStyle(
                    color: Color(0xFFC4C4C4),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
                Icon(
                  Icons.delete,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 15),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            imagestitle[index]['image'],
                            scale: 1.8,
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 8),
                            decoration: BoxDecoration(
                                color: Color(0xFFC50000),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Row(
                              children: [
                                Text(
                                  'Top',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '10',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontFamily: 'Mulish',
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 8,
                          child: Container(
                            width: 162,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment(1.00, -0.00),
                                end: Alignment(-1, 0),
                                colors: [Color(0x00C50000), Color(0xFFC50000)],
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Text(
                                'New Episode ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 8,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            imagestitle[index]['text'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '5. Chapter Five: the\nNina Project',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Color(0xFFC50000),
                                size: 30,
                              )
                            ],
                          ),
                          Text(
                            '33mins',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF909090),
                              fontSize: 12,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '348 MB',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF979797),
                              fontSize: 12,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
