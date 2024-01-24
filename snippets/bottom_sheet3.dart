import 'package:flutter/material.dart';

class BottomSheet3 extends StatefulWidget {
  const BottomSheet3({super.key});

  @override
  State<BottomSheet3> createState() => _BottomSheet3State();
}

class _BottomSheet3State extends State<BottomSheet3> {
  @override
  Widget build(BuildContext context) {
    return showModalBottomSheet(
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
  }
}
