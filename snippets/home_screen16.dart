import 'package:flutter/material.dart';

class ScreensBody extends StatefulWidget {
  @override
  State<ScreensBody> createState() => _ScreensBodyState();
}

class _ScreensBodyState extends State<ScreensBody> {
  final List<IconData> icons = [
    Icons.cleaning_services,
    Icons.handyman,
    Icons.cookie,
    Icons.plumbing,
    Icons.wash,
    Icons.more_horiz,
  ];
  final List<String> names = [
    'Cleaning',
    'Handyman',
    'Cooking',
    'Plumbing',
    'Wash & hold',
    'More'
  ];
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(106, 158, 158, 158)),
                  height: 50,
                  width: 300,
                  child: TextFormField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'Search Your Files',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: IconButton(
                        onPressed: () {
                          String searchQuery = _searchController.text;
                          print('Search Query: $searchQuery');
                        },
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Image.network(
                  'https://images.pexels.com/photos/7780907/pexels-photo-7780907.jpeg?auto=compress&cs=tinysrgb&w=600',
                  scale: 18,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(80, 33, 149, 243)),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 40, horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: <Widget>[
                              Text('Home Cleaning'),
                              Text('Every Sunday'),
                              Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                    child: Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 150,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(80, 33, 149, 243)),
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 40, horizontal: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  children: <Widget>[
                                    Text('Home Cleaning'),
                                    Text('Every Sunday'),
                                    Container(
                                      height: 20,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Center(
                                          child: Text(
                                        'Next',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 14),
                                      )),
                                    )
                                  ],
                                ),
                              ]))),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Container(
                 decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey, // Vertical line color
            width: 1.0, // Vertical line width
          ),
          bottom: BorderSide(
            color: Colors.grey, // Horizontal line color
            width: 1.0, // Horizontal line width
          ),
        ),
      ),
                  child: Column(
                    children: [
                      Icon(icons[index]),
                      Text(names[index])
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 10,),
           Container(
          height: 200, 
       // Set a specific height for the Container
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.all(8),
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(90, 233, 30, 98),
                ),
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amazing',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14, fontWeight: FontWeight.bold),
                      
                      ),
                      Text(
                        'Offers',
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 14, fontWeight: FontWeight.bold),
                       
                      ),
                      Text(
                        'Every day',
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 14, fontWeight: FontWeight.bold),
                        
                      ),
                      SizedBox(height: 40,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('See All',style: TextStyle(color: Colors.white,fontSize: 17),),
                            Icon(Icons.arrow_forward)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
          
  }))])),
    );
  }
}
