import 'package:flutter/material.dart';

void main() {
  runApp(MovieDetails());
}

class MovieDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MovieDetailsScreen(),
      theme: ThemeData.dark(),
    );
  }
}

class MovieDetailsScreen extends StatefulWidget {
  @override
  _MovieDetailsScreenState createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    SearchScreen(),
    MoviesScreen(),
    TvShowsScreen(),
  ];

  void _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streaming App'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Movies',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'TV Shows',
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String imageUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9oDZN5iwK2s5-rldcvga7Zhhxq2r0O5xQ3MWjIRMW38ZfeGA37Z2WA0ZLkDX2roW9Ews&usqp=CAUr';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          imageUrl,
                          fit: BoxFit.fill,
                          width: double.infinity,
                          height: 370,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Sabrina',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.black.withOpacity(0.5),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  '7.5 IMDB • 60m • 2018',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 2),
                Text(
                  'As her 16th birthday nears, Sabrina must choose between the witch world of her family and the human ....',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                SizedBox(height: 16),
                Text(
                  'Continue Watching',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 16),
                SizedBox(
                  height: 160,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      buildContinueWatchingCard(context, 'Never Have I Ever', imageUrl),
                      buildContinueWatchingCard(context, 'Never Have I Ever', imageUrl),
                      buildContinueWatchingCard(context, 'Never Have I Ever', imageUrl),
                      buildContinueWatchingCard(context, 'Never Have I Ever', imageUrl),
                      buildContinueWatchingCard(context, 'Never Have I Ever', imageUrl),
                      buildContinueWatchingCard(context, 'Never Have I Ever', imageUrl),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContinueWatchingCard(BuildContext context, String title, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(title: title, imageUrl: imageUrl),
          ),
        );
      },
      child: Container(
        width: 120,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.grey[850],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: 110,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(Icons.favorite_border, color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 14, color: Colors.white),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: 0.5,
                    backgroundColor: Colors.grey,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;

  DetailScreen({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(imageUrl),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Screen'),
    );
  }
}

class MoviesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Movies Screen'),
    );
  }
}

class TvShowsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('TV Shows Screen'),
    );
  }
}
