import 'package:flutter/material.dart';

class Stangerathings extends StatefulWidget {
  const Stangerathings({super.key});

  @override
  State<Stangerathings> createState() => _StangeratahingsState();
}

class _StangeratahingsState extends State<Stangerathings>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<String> images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8SSYBJIXz10epC9jRUf5YROx7k5gFe6qAv4o1poHkFpPOSQeXapS7HdSR2w&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKtdMw8rGPwV17i-G5CS3yDRVoylh5E_Vm3jfgllSJKAdthJtEiBA20PiEfQ&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-PJElMnmguiARiEXp2WvjtsoFhOxqb64ifL3FYC25EcEOBW4_AImj&usqp=CAE&s'
  ];

  final List<IconData> icons = [
    Icons.download,
    Icons.thumb_up_alt_outlined,
    Icons.format_list_bulleted,
    Icons.share,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Stranger Things',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(children: [
                Stack(
                  children: [
                    Container(
                      width: 375,
                      height: 192,
                      decoration:
                          BoxDecoration(color: Colors.black.withOpacity(0.5)),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAfqhqIhYQd3XJlgNEEvtRYETDrUC3h7-Bww&usqp=CAU',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF97IS-h66hUXISppaxpV3aZ28u2RYmSVamtBx-v7DsdqbXvwbntA9K9lK5A&s',
                        scale: 6,
                      ),
                    )),
                    Positioned(
                        left: 160,
                        bottom: 80,
                        child: Container(
                          child: Icon(
                            Icons.play_circle,
                            size: 40,
                            color: Colors.red,
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius:BorderRadius.only(bottomRight: Radius.circular(10),
                          topRight: Radius.circular(10))),
                      child: Center(
                        child: Text(
                          'Top 10',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '#1 in TV Shows Today',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Stranger Things',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    children: [
                      Container(
                        width: 3,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC50000),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '2022',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC50000),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        '4 Seasons',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC50000),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        'U/A 16+',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF909090),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            'HD',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Container(
                    height: 70,
                    width: 390,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(17.0),
                            child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              decoration: BoxDecoration(
                                color: Color(0xFF303030),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                icons[index],
                                size: 20,
                                color: const Color.fromARGB(181, 255, 255, 255),
                              ),
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  width: 343,
                  height: 47,
                  decoration: ShapeDecoration(
                    color: Color(0xFFC50000),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x14000000),
                        blurRadius: 4,
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_right,
                          size: 50,
                          color: Colors.white,
                        ),
                        Text(
                          'Play',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'S1:E7 “Chapter Seven: The Bathtub”',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultricies non aliquet convallis eget neque. Non vitae at adipiscing sodales varius pretium mauris. Lorem fames sed odio et nulla sem malesuada. In cras posuere ',
                          style: TextStyle(
                            color: Color(0xFF979797),
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text(
                        'Creator :',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'The Duffer Brothers',
                        style: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    DefaultTabController(
                      length: 4,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF303030),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x14000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 3),
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TabBar(
                                  dividerColor: Colors.transparent,
                                  indicatorColor: Colors.red,labelColor: Colors.white,
                                  isScrollable: false,
                                  controller: _tabController,
                                  labelPadding:
                                      EdgeInsets.symmetric(horizontal: 1),
                                      
                                  tabs: [
                                    Tab(text: 'Episode'),
                                    Tab(text: 'Collection'),
                                    Tab(text: 'Trailers & More', ),
                                    Tab(text: 'More'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                              height:
                                  10), // Add spacing between TabBar and TabBarView
                      
                          // TabBarView to display content corresponding to tabs
                          Container(
                            height: 200, // Set the height or adjust as needed
                            child: TabBarView(
                              controller: _tabController,
                              children: [
                                // Content for 'Episode' tab
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: 130,
                                            height: 27,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFFC50000),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                            ),
                                            child: Center(
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 8),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Stranger Things',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 0,
                                                      ),
                                                    ),
                                                    DropdownButton(
                                                      onChanged: (value) {
                                                        // Handle the onChanged event if needed
                                                        print(
                                                            'Selected value: $value');
                                                      },
                                                      items: <DropdownMenuItem>[],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            width: 162,
                                            height: 98,
                                            decoration: ShapeDecoration(
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrUgU-Ykt3DeY2l9v5x4gFqaDAh4J_tj6xGg&usqp=CAU"),
                                                fit: BoxFit.fill,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '5. Chapter Five: the ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w700,
                                                  height: 0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    'Nina Project',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: 'Mulish',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 25,
                                                  ),
                                                  Container(
                                                    height: 30,
                                                    width: 30,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15), // Half of the height or width for a perfect circle
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                    ),
                                                    child: Center(
                                                      child: Icon(
                                                        Icons.download,
                                                        color:
                                                            Color(0xFF909090),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                '33mins',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF909090),
                                                  fontSize: 12,
                                                  fontFamily: 'Manrope',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                '348 MB',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Color(0xFF979797),
                                                  fontSize: 12,
                                                  fontFamily: 'Mulish',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                      
                                // Content for 'Collection' tab
                                Center(
                                    child: Stack(
                                  children: [
                                    // First Image
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        // width: 115,
                                        // height: 177,
                                        decoration: ShapeDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(0.00, -1.00),
                                            end: Alignment(0, 1),
                                            colors: [
                                              Colors.black.withOpacity(0),
                                              Colors.black.withOpacity(
                                                  0.8700000047683716),
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Image.network(
                                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ6x5S6TJsZ1_joSkodeH1DjC-3vOqQeH77m6MfUMhz3ddEyfRO',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    // Second Image with "Top 10" label
                                    Positioned(
                                      left:
                                          150, // Adjust the left position based on your needs
                                      child: Container(
                                        decoration: ShapeDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(0.00, -1.00),
                                            end: Alignment(0, 1),
                                            colors: [
                                              Colors.black.withOpacity(0),
                                              Colors.black.withOpacity(
                                                  0.8700000047683716),
                                            ],
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 30),
                                          child: Image.network(
                                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoUTGapX7T_ESTtCb3DtPgIse6wg57paQ59B09zGxZdxL5LQyrE-e1EUN_1USXUSJTqfI&usqp=CAU',
                                          ),
                                        ),
                                      ),
                                    ),
                                    // "Top 10" label on the second image
                                    Positioned(
                                        left:
                                            110, // Adjust the left position based on your needs
                                        bottom:
                                            160, // Adjust the bottom position based on your needs
                                        child: Container(
                                            height: 20,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(10),
                                                  topLeft: Radius.circular(10)),
                                            ),
                                            child: Center(
                                                child: Text(
                                              'Top 10',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontFamily: 'Mulish',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ))))
                                  ],
                                )),
                      
                                // Content for 'Trailers & More' tab
                                Center(
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 3,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 115,
                                                  height: 177,
                                                  decoration: ShapeDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                          0.00, -1.00),
                                                      end: Alignment(0, 1),
                                                      colors: [
                                                        Colors.black
                                                            .withOpacity(0),
                                                        Colors.black.withOpacity(
                                                            0.8700000047683716)
                                                      ],
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius.only(bottomLeft: Radius.circular(10),
                                                                topLeft: Radius.circular(10))),
                                                  ),
                                                  child: Image.network(
                                                    images[index],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Positioned(
                                                    right: 80,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Image.network(
                                                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF97IS-h66hUXISppaxpV3aZ28u2RYmSVamtBx-v7DsdqbXvwbntA9K9lK5A&s',
                                                        scale: 8,
                                                      ),
                                                    )),
                                                Positioned(
                                                  left: 70,
                                                  child: Container(
                                                    height: 20,
                                                    width: 50,
                                                    decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                    child: Center(
                                                      child: Text(
                                                        'Top 10',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 10,
                                                          fontFamily: 'Mulish',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        })),
                      
                                // Content for 'More' tab
                                Center(child: Text('More Content')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ]))),
    );
  }
}
