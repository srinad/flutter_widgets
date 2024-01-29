import 'package:flutter/material.dart';

class BottomNavigation2 extends StatefulWidget {
  @override
  BottomNavigation2State createState() => BottomNavigation2State();
}

class BottomNavigation2State extends State<BottomNavigation2> {
  int _selectedIndex = 0;
  final List<String> _pageTexts = [
    'Home Page Text',
    'Person Page Text',
  ];

  settabIndexs(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.indigo,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          IndexedStack(
            index: _selectedIndex,
            children: _pageTexts
                .map((text) => Center(
                      child: Text(
                        text,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ))
                .toList(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: CustomPaint(
                painter: RPSCustomPainter(),
                child: Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              settabIndexs(0);
                            },
                            child: _selectedIndex == 0
                                ? Icon(Icons.home, size: 30)
                                : Icon(Icons.home_outlined, size: 30),
                          ),
                          GestureDetector(
                            onTap: () {
                              settabIndexs(1);
                            },
                            child: _selectedIndex == 1
                                ? Icon(Icons.person, size: 30)
                                : Icon(Icons.person_3_outlined, size: 30),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Center(
              child: Align(
                child: Column(children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: FloatingActionButton(
                        focusElevation: null,
                        backgroundColor: Colors.transparent,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Icon(Icons.shopping_cart_checkout),
                        ),
                        elevation: 0,
                        onPressed: () async {},
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.6856318);
    path_0.cubicTo(
        0,
        size.height * 0.4098333,
        size.width * 0.03292133,
        size.height * 0.1736879,
        size.width * 0.08099387,
        size.height * 0.1354842);
    path_0.cubicTo(size.width * 0.1585304, size.height * 0.07386652,
        size.width * 0.2945947, 0, size.width * 0.5013333, 0);
    path_0.cubicTo(
        size.width * 0.7075413,
        0,
        size.width * 0.8425360,
        size.height * 0.07348803,
        size.width * 0.9194187,
        size.height * 0.1350097);
    path_0.cubicTo(size.width * 0.9673067, size.height * 0.1733303, size.width,
        size.height * 0.4086697, size.width, size.height * 0.6834500);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.6856318);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
