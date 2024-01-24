import 'package:flutter/material.dart';

class NewSeasons extends StatefulWidget {
  const NewSeasons({super.key});

  @override
  State<NewSeasons> createState() => _NewSeasonsState();
}

class _NewSeasonsState extends State<NewSeasons>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      // This will be called whenever the tab is changed
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1E1E1E),
        title: Text(
          'New & Hot',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                  child: TabBar(
                    controller: _tabController,
                    labelPadding: EdgeInsets.symmetric(horizontal: 15.0),
                    dividerColor: Colors.transparent,
                    isScrollable: true,
                    indicator: BoxDecoration(),
                    indicatorPadding: EdgeInsets.zero,
                    tabs: [
                      _buildSelectedTabContainer(
                          _tabController.index == 0, 'Coming Soon'),
                      _buildSelectedTabContainer(
                          _tabController.index == 1, 'Everyone’s Watching'),
                      _buildSelectedTabContainer(
                          _tabController.index == 2, 'Top10'),
                    ],
                  ),
                ),
                SizedBox(height: 0),
                Container(
                    height: 550,
                    child: TabBarView(controller: _tabController, children: [
                      TabBarContent(),
                      TabBarContent2(),
                      TabBarContent2(),
                    ]))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSelectedTabContainer(bool isSelected, String label) {
    if (isSelected) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: 140,
        height: 38,
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
        child: Align(
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ),
      );
    } else {
      return Text(
        label,
        style: TextStyle(color: Colors.white),
      );
    }
  }
}

class TabBarContent extends StatefulWidget {
  const TabBarContent({super.key});

  @override
  State<TabBarContent> createState() => _TabBarContentState();
}

class _TabBarContentState extends State<TabBarContent> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '24',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w700,
                            height: 0),
                      ),
                      Text(
                        'JUN',
                        style: TextStyle(
                          color: Color(0xFFC50000),
                          fontSize: 18,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  Image.network(
                    'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTAFBJ6V_9DwQXRYhRmnMiIVXr7lBQrcCkqkB_xaBhJbG3K_DVL',
                    scale: 1.5,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                      ),
                      Text(
                        'Remind Me',
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontSize: 10,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(
                          color: Color(0xFFC4C4C4),
                          fontSize: 10,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: 200,
                  width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSgd93m9MlSjnq4AB5NSi67zj_H32MyP2sNg&usqp=CAU"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 73,
                  bottom: 73,
                  right: 0,
                  left: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFC50000),
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 3,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC50000),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Action',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC50000),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Emotional',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 3,
                        height: 3,
                        decoration: ShapeDecoration(
                          color: Color(0xFFC50000),
                          shape: OvalBorder(),
                        ),
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Exciting',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Season 1 Coming on 24 June',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 3),
                  SizedBox(
                    width: 343,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque feugiat pulvinar pulvinar etiam nunc, nunc quam. Enim a dictum sodales proin. Posuere integer sit tempus quam sed rhoncus. ',
                      style: TextStyle(
                        color: Color(0xFF979797),
                        fontSize: 12,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class TabBarContent2 extends StatefulWidget {
  const TabBarContent2({super.key});

  @override
  State<TabBarContent2> createState() => _TabBarContent2State();
}

class _TabBarContent2State extends State<TabBarContent2> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tabbar Content',
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
