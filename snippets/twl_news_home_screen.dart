import 'package:flutter/material.dart';

class NewsBody extends StatefulWidget {
  @override
  State<NewsBody> createState() => _NewsBodyState();
}

class _NewsBodyState extends State<NewsBody>
    with SingleTickerProviderStateMixin {
  List<String> network = [
    'assets/phone.png',
    'assets/image 4.png',
    'assets/image 5.png'
  ];
  List<String> title = [
    'iQoo 9, iQoo9 9 pro goes on sale in\n india : price, Specs',
    "In 'naive Balasahed' remark,\n uddhav's attempt to break free ...",
    "Demolition to loudspeaker,AAP \n raises pitch to drown BJP 'noise.."
  ];
  List<String> subtitle = [
    'One of the most affordable Snapdragon\n 695 divices out there,the iQoo Z6 is \n great on pappers for its price, but how good\n is it in real life ',
    "Chief Minister usshav Thackeray's recent \n remarks that he is not 'naiva' like his \n father Balashehab Thackerayand that he \ncan se through the BJP's agenda is.",
    "Our crities say we arelegitimising BJP's\n narrative, What they don't realise is that \n it is alreadylegitimising"
  ];
  List<String> mintsago = ['20 mins ago', '43 mins ago', '45 mins ago'];

  late TabController _tabController;

  final _selectedColor = Color(0xFF134F9C);

  final _tabs = [
    Tab(text: 'All'),
    Tab(text: 'Trending'),
    Tab(text: 'Cricket'),
    Tab(text: 'Bollywood'),
  ];
  List<String> image = [
    'assets/Shan teylor image.png',
    'assets/mary Angela.png',
    'assets/Shan teylor image.png',
  ];
  List<String> names = ['Shan Teylor', 'Mary Angela', 'Shan Teylor'];
  List<String> namesimage = ['Tech Mint', 'Live Mint', 'Tech Mint'];
  List<String> ipl = ['assets/ipl.png', 'assets/ipl2.png', 'assets/ipl3.png'];
  List<String> ipltitle = [
    "IPL 2022, DC vs SRH Live Score \n Updates: Delhi to play Hyderabad..",
    "IPL 2022 Purple Cap: Yuzvandra \n Chaha is the highest wicket- taker..",
    "Here's What to expect from Apple \n in the secound-half of 2022"
  ];
  List<String> iplsubtaitle = [
    "IPL 2022, DC vs SRH Live cricket Score \n Streaming online today Match Updates: At least DC's eight points from nine games,with five defeats,show that..",
    "IPL 2022 Purple Cap Holder List, Most \n Wickets in ipl 2022: The purple cap is\n awarded to the leadind wicket-taker \n every season.the table gets updates",
    "iphone 14,revamped MacBook Air to\n Apple Watch searies 8,Hear we pridict \n what we expect from Apple in the Secound \n half of 2022"
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: _selectedColor,
                  ),
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: Colors.black,
                  tabs: _tabs,
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 1,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  network[index],
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  title[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  subtitle[index],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Container(
                                          width:
                                              10.0, // Adjust the size of the dot as needed
                                          height: 10.0,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      // Adjust the space between dot and text
                                      Text(
                                        mintsago[index],
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.bookmark_border, size: 25),
                                      SizedBox(
                                          width:
                                              8.0), // Adjust the space between icons
                                      Icon(Icons.share, size: 25),
                                      SizedBox(
                                          width:
                                              8.0), // Adjust the space between icons
                                      Icon(Icons.more_vert, size: 25),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/Vector.png',
                        scale: 4,
                      ),
                      Text(
                        ' Creators you should follow',
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 230.0, // Set a fixed height for the container
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: AlwaysScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Image.asset(
                              image[index],
                              scale: 4.0,
                            ),
                            Text(names[index]),
                            Text(
                              namesimage[index],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                            Container(
                              height: 40,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFF134F9C)),
                              child: Center(
                                  child: Text(
                                'Follow',
                                style: TextStyle(color: Colors.white),
                              )),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Card(
                          elevation: 1,
                          child: Column(
                            children: [
                              ListTile(
                                leading: Image.asset(
                                  ipl[index],
                                  fit: BoxFit.cover,
                                ),
                                title: Text(
                                  ipltitle[index],
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  iplsubtaitle[index],
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Container(
                                          width:
                                              10.0, // Adjust the size of the dot as needed
                                          height: 10.0,
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                      ),
                                      // Adjust the space between dot and text
                                      Text(
                                        '1day ago',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(Icons.bookmark_border, size: 25),
                                      SizedBox(
                                          width:
                                              8.0), // Adjust the space between icons
                                      Icon(Icons.share, size: 25),
                                      SizedBox(
                                          width:
                                              8.0), // Adjust the space between icons
                                      Icon(Icons.more_vert, size: 25),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE8F3FF)),
                  child: Center(
                      child: Text(
                    'Show More',
                    style: TextStyle(color: Color(0xFF134F9C)),
                  )),
                ),
                SizedBox(height: 20,),
               Container(
  height: 200,
  width: 340,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0xFFF0F7FF),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 20), // Adjust the height as needed for the desired gap
      Text(
        'Subscribe to our TWL news',
        style: TextStyle(color: Colors.black, fontSize: 20),
      ),
      SizedBox(height: 20), // Adjust the height as needed for the desired gap
      Container(
        height: 55,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter Email',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
            alignLabelWithHint: true,
          ),
          style: TextStyle(),
          cursorColor: Colors.blue,
        ),
      ),
      SizedBox(height: 19,),
    Container(
      height: 50,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),color: Color(0xFF134F9C),
      ),
      child: Center(child: Text('Subscribe',style: TextStyle(color: Colors.white,fontSize: 20),)),
    )
                        ],
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
