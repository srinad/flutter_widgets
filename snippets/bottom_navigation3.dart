import 'package:flutter/material.dart';

class BottomNavigation3 extends StatefulWidget {
  const BottomNavigation3({Key? key}) : super(key: key);

  @override
  State<BottomNavigation3> createState() => _BottomNavigation3State();
}

class _BottomNavigation3State extends State<BottomNavigation3> {
  int _currentIndex = 0; // Track the current selected index

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white10,
      body: Stack(
        children: [
          // Display text based on the selected index
          Center(
            child: Text(
              _getTextForIndex(_currentIndex),
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.shopping_basket),
                      elevation: 0.1,
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () => _onItemTapped(0),
                          icon: Icon(Icons.home, color: Colors.pink),
                        ),
                        IconButton(
                          onPressed: () => _onItemTapped(1),
                          icon: Icon(Icons.restaurant_menu, color: Colors.pink),
                        ),
                        Container(width: size.width * 0.20),
                        IconButton(
                          onPressed: () => _onItemTapped(2),
                          icon: Icon(Icons.bookmark, color: Colors.pink),
                        ),
                        IconButton(
                          onPressed: () => _onItemTapped(3),
                          icon: Icon(Icons.notifications, color: Colors.pink),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to return text based on the selected index
  String _getTextForIndex(int index) {
    switch (index) {
      case 0:
        return 'Home Page Text';
      case 1:
        return 'Restaurant Menu Page Text';
      case 2:
        return 'Bookmark Page Text';
      case 3:
        return 'Notifications Page Text';
      default:
        return 'Unknown Page Text';
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(
      Offset(size.width * 0.60, 20),
      radius: Radius.circular(10.0),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawShadow(path, Colors.black, 5, true);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
