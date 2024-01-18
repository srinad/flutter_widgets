// ignore_for_file: override_on_non_overriding_member, unused_local_variable

import 'package:flutter/material.dart';

class AppBarHomeScreen extends StatefulWidget {
  const AppBarHomeScreen({super.key});

  @override
  State<AppBarHomeScreen> createState() => _AppBarHomeScreenState();
}

class _AppBarHomeScreenState extends State<AppBarHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverPersistentHeader(
          delegate: SliverSearchAppBar(),
          pinned: true,
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              // crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    padding: EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      shadows: [
                        BoxShadow(
                          color: Color(0x28000000),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        )
                      ],
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTny0xLWQpqYRfBDgoIX8D8YgHoM9jMsyEKMQ&usqp=CAU',
                            scale: 2,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Zara',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF840008),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'with Spanish clothing and accessories retailer',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 2),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        '\$ ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF840008),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        '250.0',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF840008),
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            childCount: 4,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Brands',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5,
                            color: const Color.fromARGB(255, 230, 229, 229),
                            offset: Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                          ),
                          child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjkw41KNmqWQGyKmhmp3J6MlcLalTwXoI_asEyOzP2E8TBpCxzpKVTEM0s2z3xdiwtxO0&usqp=CAU",
                            // fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "ZARA",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 5),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF840008).withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    // width: 40,
                                    child: Row(
                                      children: [
                                        Text(
                                          "5.0",
                                          style: TextStyle(
                                            color: Color(0xFF840008),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 3,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Color(0xFF840008),
                                          size: 16,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Clothing , Accessories,Makeup\n \$200 for one",
                                    style: TextStyle(
                                      color: Color(0xFF840008),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer_outlined,
                                        color: Colors.blueGrey,
                                        size: 15,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "25-30 min",
                                        style: TextStyle(
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  //started positioned
                  Positioned(
                      top: 20,
                      right: 70,
                      child: InkWell(
                        onTap: () {
                          // setState(() {
                          //   isFavorouite =!isFavorouite;
                          // });
                        },
                        child: Icon(
                          // isFavorouite ?
                          Icons.favorite,
                          // : Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      )),
                  //2nd pop up
                  Positioned(
                      right: 20,
                      top: 15,
                      child: PopupMenuButton(
                        offset: Offset(0, 50),
                        color: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 28,
                        ),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                child: ListTile(
                              leading: Icon(
                                Icons.space_dashboard_rounded,
                                color: Colors.white,
                                size: 15,
                              ),
                              title: Text(
                                "Show similar cloths",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                            PopupMenuItem(
                                child: ListTile(
                              leading: Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 15,
                              ),
                              title: Text(
                                "Share",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )),
                          ];
                        },
                      ))
                ],
              );
            },
            childCount: 3,
          ),
        ),
      ],
    ));
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 140;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}

class BackgroundWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    const minSize = 170.0;

    final p1Diff = ((minSize - size.height) * 0.4).truncate().abs();
    path.lineTo(0.0, size.height - p1Diff);

    final controlPoint = Offset(size.width * 0.4, size.height);
    final endPoint = Offset(size.width, minSize);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(BackgroundWaveClipper oldClipper) => oldClipper != this;
}

class SliverSearchAppBar extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var adjustedShrinkOffset =
        shrinkOffset > minExtent ? minExtent : shrinkOffset;
    double offset = (minExtent - adjustedShrinkOffset) * 0.5;
    double topPadding = MediaQuery.of(context).padding.top + 20;

    return Stack(
      children: [
        ClipPath(
            clipper: BackgroundWaveClipper(),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 280,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 228, 198, 200),
                  Color.fromARGB(255, 235, 210, 188)
                ],
              )),
            )),
       
        Positioned(
          bottom: 80,
          child: SearchBar(),
          left: 16,
          right: 16,
        )
      ],
    );
  }

  @override
  double get maxExtent => 280;

  @override
  double get minExtent => 180;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      oldDelegate.maxExtent != maxExtent || oldDelegate.minExtent != minExtent;
}

class SearchBar extends StatelessWidget {
  final pink = const Color(0xFFFACCCC);
  final grey = const Color(0xFFF2F2F7);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Lets find \ncruelty free brands',
          style: TextStyle(
              fontSize: 17,
              color: Color(0xFF840008).withOpacity(0.6),
              fontWeight: FontWeight.w700),
        ),
        SizedBox(height: 15),
        SizedBox(
          width: MediaQuery.of(context).size.width - 32,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusColor: pink,
              focusedBorder: _border(pink),
              border: _border(grey),
              enabledBorder: _border(grey),
              hintText: 'Start brand search',
              contentPadding: const EdgeInsets.symmetric(vertical: 17),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            onFieldSubmitted: (value) {},
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 0.5, color: color),
        borderRadius: BorderRadius.circular(12),
      );
}





//     Scaffold(
//       body: Container(
//         child: Stack(
//           children: <Widget>[
//             Container(color: Colors.orange),
//             ClipPath(
//               clipper: TheCustomClipper(),
//               child: Container(
//                 color: Colors.greenAccent,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TheCustomClipper extends CustomClipper<Path> {
//   @override
//   getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height / 3);
//     var firstControlPoint = Offset(0, size.height / 3.5); // adjust the height to move start of the first curve
//     var firstEndPoint = Offset(size.width / 4.2, size.height / 3.5 + 10); // adjust the width to add the end controll point and height to move end of the first curve

//     var secControlPoint = Offset(size.width, size.height / 2.8); // adjust the height to move end of the second curve
//     var secEndPoint = Offset(size.width, size.height / 3 - 40); // adjust the width to add the right first controll point and height to move start of the second curve

//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);
//     path.quadraticBezierTo(
//         secControlPoint.dx, secControlPoint.dy, secEndPoint.dx, secEndPoint.dy);

//     path.lineTo(size.width, size.height / 3);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper oldClipper) {
//     return false;
//   }

//     Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: <Widget>[
//           ClipPath(
//             child: Container(
//               height: MediaQuery.of(context).size.height* .30,
//               color: Colors.black,
//             ),
//             clipper: BottomWaveClipper(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BottomWaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height * .55);

//     var firstControlPoint = Offset(0, size.height * .75);
//     var firstEndPoint = Offset(size.width / 6, size.height * .75);

//     path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
//         firstEndPoint.dx, firstEndPoint.dy);

//     path.lineTo(size.width / 1.2, size.height * .75);

//     var secControlPoint = Offset(size.width, size.height * .75);
//     var secEndPoint = Offset(size.width, size.height * 0.85);

//     path.quadraticBezierTo(
//         secControlPoint.dx, secControlPoint.dy, secEndPoint.dx, secEndPoint.dy);

//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }