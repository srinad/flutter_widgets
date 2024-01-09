import 'package:flutter/material.dart';

class ScreensofhomepagesBody extends StatefulWidget {
  @override
  State<ScreensofhomepagesBody> createState() => _ScreensofhomepagesBodyState();
}

class _ScreensofhomepagesBodyState extends State<ScreensofhomepagesBody> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hii Tam,',
                      style: TextStyle(color: Colors.black, fontSize: 27),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Welcome Back',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 24),
                                ),
                                Image.network(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJDNVM7NKnz4mMHP_op579QV-vh9XtMFbQjo42aaByOgvQ5-uzTScrj1SlatCq-7Tkdk0&usqp=CAU',
                                  scale: 6,
                                )
                              ],
                            ),
                          ],
                        ),
                        ClipOval(
                          child: Container(
                            width: 34.0,
                            height: 35.0,
                            color: Color.fromARGB(73, 233, 30, 98),
                            child: Image.network(
                              'https://cdn-icons-png.flaticon.com/128/1828/1828859.png',
                              scale: 7,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 340,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(55, 33, 149, 243),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
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
                    ),
                    Text(
                      'Upgrade now for upto2 TB of space , and get \n plenty of room for your files',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              'Find out more',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Quick Access',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),

              // Your additional widgets...
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle tap on first text
                    },
                    child: Container(
                     
                      width: 80,
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(85, 33, 149, 243),
                        borderRadius: BorderRadius.circular(10)
                       
                      ),
                      child: Center(child: Text('Uploaded')),
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: () {
                      // Handle tap on second text
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                       
                      ),
                      child: Center(child: Text('Shared')),
                    ),
                  ),
                  
                  GestureDetector(
                    onTap: () {
                      // Handle tap on third text
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        
                      ),
                      child: Center(child: Text('starred')),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Container(
  height: 100.0,
  width: 300.0,
  decoration: BoxDecoration(
   
  border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: Center(
    child: ListTile(
      leading:
      Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey),
        child: 
        Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZx8wfFuRgHMuDp7r3DtJLYk-aPvwDdoDLm-oo9u3ndQ1jM7IK24aw&usqp=CAE&s',),),
      title: Row(
        children: [
          Text('Bento 3D illustation'),
          Icon(Icons.person)
        ],
      ),
      subtitle: Text('7/22/20,12:32 pm',style: TextStyle(color: Colors.grey),),
    ),
  )
),
SizedBox(height: 15,),
Container(
  height: 100.0,
  width: 300.0,
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.black54,
        blurRadius: 6.0,
        offset: Offset(0.0, 2.0),
      ),
    ],
  ),
  child: Center(
    child: ListTile(
      title: Text('File Manager ios ui kit',style: TextStyle(color: Colors.black,fontSize: 15),),
      subtitle: Text('Shared 1 month ago'),
      leading:Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZSFsMyh0dULlEm_at-dSLPtu6Jm-QRZeQJw&usqp=CAU'),
     
    ),
  ),
)


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.file_copy),
            label: 'Files',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'star',
          ),
        ],
        currentIndex: 0, // You can set the initial index here
        selectedItemColor: Colors.blue, // Set the color of the selected item
        onTap: (index) {
          // Handle taps on the bottom navigation items
          // You can navigate to different screens or perform actions based on the index
        },
      ),
    );
  }
}
