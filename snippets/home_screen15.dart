import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  List<IconData> icons3 = [
    Icons.lightbulb,
    Icons.computer,
    Icons.door_back_door,
  ];
  List<String> names = [
    'Fridge',
    'computer',
    'Door',
  ];

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Good Morning,\n ZiYi',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                ClipOval(
                  child: CircleAvatar(
                    radius: 20.0, // adjust the radius according to your needs
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/2681751/pexels-photo-2681751.jpeg?auto=compress&cs=tinysrgb&w=600',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 80,
            width: 340,
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    child: ListTile(
                      title: Text(
                        '26°C',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'Outdoor Temp',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Text(
                        '46.0 %',
                        style: TextStyle(color: Colors.black),
                      ),
                      subtitle: Text(
                        'Outdoor Humidity',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.cloud,
                            color: Colors.black,
                            size: 30,
                          ),
                          Text(
                            'weather',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,physics: NeverScrollableScrollPhysics(),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Living Room',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    )),
                                SizedBox(
                                  width: 16,
                                ),
                                Text('Dining Room',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    )),
                                SizedBox(
                                  width: 16,
                                ),
                                Text('Bathroom',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    )),
                                SizedBox(
                                  width: 16,
                                ),
                                Text('Kitchen',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                    )),
                              ],
                            ),

                            // Add more content here to exceed the available height
                          ],
                        ),
                      ),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0,
                    ),
                    itemCount: 4,physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      Color color1 = Color(0xFFD3B683);
                      Color color2 = Colors.white;

                      // Use color1 for the first item, and color2 for the rest
                      Color color = index == 0 ? color1 : color2;
                      List<String> titles = [
                        'Lamp',
                        'Router',
                        'Air',
                        'Smart Tv'
                      ];
                      List<String> subtitles = [
                        'Opened',
                        'Colsed',
                        '24°C',
                        'Playing'
                      ];

                      List<IconData> icons1 = [
                        Icons.lightbulb,
                        Icons.favorite,
                        Icons.camera,
                        Icons.mail
                      ];
                      List<IconData> icons2 = [
                        Icons.more_horiz,
                        Icons.more_horiz,
                        Icons.more_horiz,
                        Icons.more_horiz
                      ];

                      return Card(
                        color: color,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    icons1[index],
                                    color: Colors.black,
                                  ),
                                  SizedBox(
                                      width:
                                          10.0), // Add some spacing between the icons
                                  Icon(
                                    icons2[index],
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        titles[index],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18.0),
                                      ),
                                      Text(
                                        subtitles[index],
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 14.0),
                                      ),
                                    ],
                                  ),
                                  Switch(
                                    value: _switchValue,
                                    onChanged: (value) {
                                      setState(() {
                                        _switchValue = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Divices',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
SizedBox(
  height: 80.0, // Set the height explicitly
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 3,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration:BoxDecoration(borderRadius: BorderRadius.circular(17),
          border: Border.all(color: Colors.grey)),
          height: 100,
          width: 100,
          child: Column(
            children: [
              Icon(icons3[index]), // Replace with your actual icon
              Text(names[index]), // Replace with your actual text
            ],
          ),
        ),
      );
    },
  ),
),
    
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
