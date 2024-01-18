import 'package:flutter/material.dart';

class TimeSlotScreen extends StatefulWidget {
  const TimeSlotScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<TimeSlotScreen> createState() => _TimeSlotScreenState();
}

bool isExpanded = true;

class _TimeSlotScreenState extends State<TimeSlotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(236, 255, 252, 1),
        title: Text(
          "Book Time slot",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevation: 0,
        leading: Transform.scale(
          scale: 0.6,
          child: Container(
              width: 36,
              height: 36,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.black,
                    size: 30,
                  ))),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ExpansionTile(
                          trailing: isExpanded
                              ? Icon(Icons.arrow_drop_down_rounded,color: Color(0xFFFA575C),)
                              : Icon(Icons.arrow_drop_up_rounded,color: Color(0xFFFA575C),),
                          title: Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Aug 11th',
                                      style: TextStyle(
                                        color: Color(0xFF1A1A1A),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    // SizedBox(width: 40),
                                    Text(
                                      'Tomorrow',
                                      style: TextStyle(
                                        color: Color(0xFF8390A1),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Tuesday',
                                  style: TextStyle(
                                    color: Color(0xFF26C0B8),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          children: [
                            if (isExpanded)
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 0.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          width: 150,
                                          // height: 4.h,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 10),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 0.75,
                                                  color: Color(0xFFFA575C)),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '08:00AM - 09:00AM',
                                              style: TextStyle(
                                                color: Color(0xFFFA575C),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 150,
                                          // height: 4.h,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 10),
                                          decoration: ShapeDecoration(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide(
                                                  width: 0.75,
                                                  color: Color(0xFFFA575C)),
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                          ),
                                          child: Center(
                                            child: Text(
                                              '08:00AM - 09:00AM',
                                              style: TextStyle(
                                                color: Color(0xFFFA575C),
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
                height: 50.0,
                width: 400,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFA575C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            15.0), // Set your border radius here
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Next")))
          ],
        ),
      ),
    );
  }
}
