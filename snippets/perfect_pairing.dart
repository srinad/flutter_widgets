import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfectPairing extends StatefulWidget {
  const PerfectPairing({super.key});

  @override
  State<PerfectPairing> createState() => _PerfectPairingState();
}

class _PerfectPairingState extends State<PerfectPairing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                      'https://miro.medium.com/v2/resize:fit:785/0*Ggt-XwliwAO6QURi.jpg'),
                  Positioned(
                    right: 0,
                    left: 0,
                    top: 0,
                    bottom: 50,
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                      size: 90,
                    ),
                  ),
                  Positioned(
                    right: 10,
                    bottom: 10,
                    child: Column(
                      children: [
                        Container(
                          // height: containerSize,
                          // width: containerSize,
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
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfoHUCBnDs3oITk3ASlQEgsv6z2Gm0XwK5oA&usqp=CAU',
                              scale: 5,
                            ),
                          ),
                        ),
                        SizedBox(height: 26),
                        Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          '1.5m',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 26),
                        Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'My List',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 26),
                        Icon(
                          Icons.share,
                          color: Colors.white,
                          size: 30,
                        ),
                        Text(
                          'Share',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(
                        Icons.volume_up,
                        color: Colors.white,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'A Perfect\n   Pairing',
                      style: GoogleFonts.cookie(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          height: 0.9),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
