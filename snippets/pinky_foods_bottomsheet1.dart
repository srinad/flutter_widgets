import 'package:flutter/material.dart';


class bottomsheet extends StatefulWidget {
  const bottomsheet({super.key});

  @override
  State<bottomsheet> createState() => _bottomsheet1State();
}

class _bottomsheet1State extends State<bottomsheet> {
   final TextEditingController _textController = TextEditingController();
   List<String> locationnames = ['Home', 'Work', 'Hotel', 'Other'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: 80,
                          height: 4,
                          decoration: BoxDecoration(color: Color(0xFF1A1A1A)),
                        ),
                      ),
                      SizedBox(height: 10), // Add some spacing
                      Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Text(
                          'Confirm Delivery Location',
                          style: TextStyle(
                            color: Color(0xFF1A1A1A),
                            fontSize: 16,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                      // Add other content here

                      Container(
                        width: 345,
                        height: 1,
                        decoration: BoxDecoration(color: Color(0xFFD0D0D0)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtTHuk_nRrr12LeTKVnz66uVBS-lPcB2eQjw&usqp=CAU',
                            fit: BoxFit.fill,
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Ayyappa Society',
                                style: TextStyle(
                                  color: Color(0xFF1A1A1A),
                                  fontSize: 14,
                                  fontFamily: 'Acumin Pro',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Text(
                                'Change',
                                style: TextStyle(
                                  color: Color(0xFFF9408E),
                                  fontSize: 10,
                                  fontFamily: 'Acumin Pro',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 28),
                        child: Text(
                          'Ayyappa Society, Madhapur, Hyderabad',
                          style: TextStyle(
                            color: Color(0xFF606060),
                            fontSize: 12,
                            fontFamily: 'Acumin Pro',
                            fontWeight: FontWeight.w500,
                            height: 0.12,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 335,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: Color(0xFF6C19F5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Center(
                          child:GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(27),
                          topRight: Radius.circular(27),
                        ),
                      ),
                  child: Container(
      height: 540,
        child: Column(
          children: <Widget>[
            Container(
              width: 80,
              height: 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF1A1A1A)),
            ),
      
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                child: Text(
                  'Enter address details',
                  style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 16,
                    fontFamily: 'Acumin Pro',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            // Add other content here
      
            Container(
              width: 375,
              height: 1,
              decoration: BoxDecoration(color: Color(0xFFD0D0D0)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27),
                child: Text(
                  'Your Location',
                  style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 12,
                    fontFamily: 'Acumin Pro',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtTHuk_nRrr12LeTKVnz66uVBS-lPcB2eQjw&usqp=CAU',
                      fit: BoxFit.fill,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ayyappa Society',
                        style: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                      ),
                      Text(
                        'Change',
                        style: TextStyle(
                          color: Color(0xFFF9408E),
                          fontSize: 10,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Complete Address',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                    TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText: 'Spline Arcade, Flat no 102, Plot no',
                        hintStyle: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
      
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Floor',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                   
                   TextFormField(
                      controller: _textController,
                      decoration: InputDecoration(
                        hintText:  '1st Floor, Flat no 102',
                        hintStyle: TextStyle(
                          color: Color(0xFF1A1A1A),
                          fontSize: 14,
                          fontFamily: 'Acumin Pro',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          
          SizedBox(height: 17,),
         
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Text(
                      'Tag Loacation',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 12,
                        fontFamily: 'Acumin Pro',
                        fontWeight: FontWeight.w500,
                        height: 0.12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
      
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                  height: 60,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                width: 56,
                                height: 21,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 0.60, color: Color(0xFFF9408E)),
                                    borderRadius: BorderRadius.circular(23),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    locationnames[index],
                                    style: TextStyle(
                                      color: Color(0xFF1A1A1A),
                                      fontSize: 10,
                                      fontFamily: 'Acumin Pro',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      })),
            ),
            SizedBox(height: 20,),
            Container(
              width: 335,
              height: 60,
              decoration: ShapeDecoration(
                color: Color(0xFF6C19F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Center(
                child: Text(
                  'Save Address',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Acumin Pro',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  
              },
            );
          },
          child: Text(
            'Next',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Acumin Pro',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
        ),
      ),

                      )
                    ]))));
  }
}
