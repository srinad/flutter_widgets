import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final int tabIndex;

  const CategoryScreen({Key? key, required this.tabIndex}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(236, 255, 252, 1),
        title: Text(
          "Vegetables",
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
            Expanded(
                child: DefaultTabController(
                    length: 3,
                    child: Scaffold(
                      body: CustomScrollView(
                        physics: NeverScrollableScrollPhysics(),
                        slivers: <Widget>[
                          SliverToBoxAdapter(
                            child: SizedBox(
                              height: 5,
                            ),
                          ),
                          SliverToBoxAdapter(
                            child: TabBar(
                              isScrollable: true,
                              labelPadding: EdgeInsets.symmetric(horizontal: 8),
                              indicatorColor: Colors.white,
                              indicator: BoxDecoration(
                                color: Color(0xFFFA575C),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelColor:
                                  const Color.fromARGB(255, 255, 255, 255),
                              unselectedLabelColor: Color(0xFFFA575C),
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                // subCategoryDetails.map((detail) => TabContainer(text: detail['name'])).toList(),
                                Container(
                                  // width: 11.h,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xFFFA575C)),
                                  ),
                                  child: Tab(
                                    child: Text(
                                      "Vegetables",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 11.h,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xFFFA575C)),
                                  ),
                                  child: Tab(
                                    child: Text(
                                      "Exotics",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // width: 11.h,
                                  height: 40,
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xFFFA575C)),
                                  ),
                                  child: Tab(
                                    child: Text(
                                      "Flowers",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                // TabContainer(text: "Exotics"),
                                // TabContainer(text: "Flowers"),
                              ],
                            ),
                          ),
                          SliverFillRemaining(
                            child: TabBarView(
                              children: [
                                vegetablesPage(),
                                Center(child: Text('Data')),
                                Center(child: Text('Data')),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))),
          ],
        ),
      ),
    );
  }
}

class vegetablesPage extends StatelessWidget {
  const vegetablesPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      GestureDetector(
                          onTap: () {
                            // Twl.navigateTo(context, ProductDetailsScreen());
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25), // Use sizer for padding
                            width: double.infinity,
                            height:
                                100, // Use sizer to make the height responsive
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x26000000),
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.network(
                                      'https://i0.wp.com/myfreedrawings.com/wp-content/uploads/2022/07/Red-Apple-Healthy-Cute-Simple-Red-Apple-Clipart-PNG.png?resize=640%2C734&ssl=1',
                                      scale: 20,
                                    ),
                                    SizedBox(
                                      width: 15, // Use sizer for spacing
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Apple',
                                          style: TextStyle(
                                            fontSize: 18,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '₹ 99kg',
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF26C0B8),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5, // Use sizer for spacing
                                            ),
                                            Text(
                                              "₹ 100",
                                              style: TextStyle(
                                                color: Color(0xFFAAAAAA),
                                                fontSize:
                                                    12, // Use sizer to make the font size responsive
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                    height: 40.0,
                                    width: 100,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFFA575C),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                15.0), // Set your border radius here
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Text("Add")))
                              ],
                            ),
                          )),
                      // SizedBox(height: 1.h,)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
