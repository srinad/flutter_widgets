import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FoodOrderScreen(),
    );
  }
}

class FoodOrderScreen extends StatefulWidget {
  @override
  _FoodOrderScreenState createState() => _FoodOrderScreenState();
}

class _FoodOrderScreenState extends State<FoodOrderScreen> {
  Map<String, int> cartItems = {};

  void addToCart(String itemName) {
    setState(() {
      cartItems[itemName] = (cartItems[itemName] ?? 0) + 1;
    });
  }

  void removeFromCart(String itemName) {
    setState(() {
      if (cartItems.containsKey(itemName) && cartItems[itemName]! > 0) {
        cartItems[itemName] = cartItems[itemName]! - 1;
        if (cartItems[itemName] == 0) {
          cartItems.remove(itemName);
        }
      }
    });
  }

  void placeOrder() {
    // Implement order placement functionality here
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Order Placed'),
        content: Text('Your order has been placed successfully!'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[700],
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Burger'),
              Tab(text: 'Noodles'),
              Tab(text: 'Biriyani'),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.yellow[700],
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg'),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Chromicle',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Hunting for delicious food?',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  hintText: 'Search for anything',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FoodGrid(cartItems: cartItems, addToCart: addToCart, removeFromCart: removeFromCart), // Burger tab content
                  FoodGrid(cartItems: cartItems, addToCart: addToCart, removeFromCart: removeFromCart), // Noodles tab content
                  FoodGrid(cartItems: cartItems, addToCart: addToCart, removeFromCart: removeFromCart), // Biriyani tab content
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${cartItems.values.fold(0, (sum, count) => sum + count)} Item(s) added to cart',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: placeOrder,
                    child: Text('Place Order'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[700],
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
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

class FoodGrid extends StatelessWidget {
  final Map<String, int> cartItems;
  final void Function(String) addToCart;
  final void Function(String) removeFromCart;

  FoodGrid({required this.cartItems, required this.addToCart, required this.removeFromCart});

  final String imageUrl = 'https://st3.depositphotos.com/1194063/15070/i/450/depositphotos_150709644-stock-photo-various-herbs-and-spices.jpg';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 6,
        mainAxisSpacing: 6,
        children: [
          FoodItemCard(
            imageUrl: imageUrl,
            price: 15,
            name: 'Chilli Cheese',
            cartQuantity: cartItems['Chilli Cheese'] ?? 0,
            addToCart: () => addToCart('Chilli Cheese'),
            removeFromCart: () => removeFromCart('Chilli Cheese'),
          ),
          FoodItemCard(
            imageUrl: imageUrl,
            price: 18,
            name: 'Delish Bloody',
            cartQuantity: cartItems['Delish Bloody'] ?? 0,
            addToCart: () => addToCart('Delish Bloody'),
            removeFromCart: () => removeFromCart('Delish Bloody'),
          ),

          // Add more FoodItemCard widgets as needed
        ],
      ),
    );
  }
}

class FoodItemCard extends StatelessWidget {
  final String imageUrl;
  final double price;
  final String name;
  final int cartQuantity;
  final VoidCallback addToCart;
  final VoidCallback removeFromCart;

  FoodItemCard({
    required this.imageUrl,
    required this.price,
    required this.name,
    required this.cartQuantity,
    required this.addToCart,
    required this.removeFromCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(name),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: cartQuantity == 0
                ? ElevatedButton(
                    onPressed: addToCart,
                    child: Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow[700],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: removeFromCart,
                        icon: Icon(Icons.remove),
                      ),
                      Text(
                        '$cartQuantity',
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        onPressed: addToCart,
                        icon: Icon(Icons.add),
                      ),
                    ],
                  ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
