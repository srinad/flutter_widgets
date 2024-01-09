import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class NotificationScreen extends StatefulWidget {
  final int tabIndex;

  NotificationScreen({
    Key? key,
    required this.tabIndex,
  }) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
      initialIndex: widget.tabIndex,
    );
  }

  void _itemTapped(int index) {
    setState(() {
      tabController.index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Notification Screen'),
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      blurRadius: 6,
                      offset: Offset(0, 1),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TabBar(
                  indicatorPadding: EdgeInsets.zero,
                  controller: tabController,
                  unselectedLabelColor: Colors.white,
                  labelPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  onTap: _itemTapped,
                  tabs: [
                    Tab(
                      child: Text(
                        "All",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Mentions",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: tabController,
              children: [
                AllScreen(),
                Text("Delivery data"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AllScreen extends StatelessWidget {
  const AllScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageStack(
                            imageList: [
                              'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                              'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                              'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                            ],
                            imageRadius: 40,
                            imageCount: 3,
                            totalCount: 3,
                            backgroundColor: Colors.transparent,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'priya_5 and 50 other liked your post',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Daily UI Challenge 55#',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  )
                ],
              );
            },
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                      child: Image.network(
                    'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                    fit: BoxFit.cover,
                    width: 40, // Adjust the size as needed
                    height: 40,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'priya_5 started following you.',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '16h',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Follow',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ClipOval(
                      child: Image.network(
                    'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                    fit: BoxFit.cover,
                    width: 40, // Adjust the size as needed
                    height: 40,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'priya_5 started following you.',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '16h',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  'Following',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ImageStack(
                    imageList: [
                      'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                      'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                      'https://a.storyblok.com/f/191576/1200x800/215e59568f/round_profil_picture_after_.webp',
                    ],
                    imageRadius: 40,
                    imageCount: 3,
                    totalCount: 3,
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'priya_5 and 50 other liked your post',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Daily UI Challenge 55#',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
