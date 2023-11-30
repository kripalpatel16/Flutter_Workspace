import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task61/profile.dart';

import 'cart.dart';


void main()
{
  runApp(MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: menuscreen()));
}

class menuscreen extends StatefulWidget {
  @override
  menuState createState() => menuState();
}

class menuState extends State<menuscreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    HomeTab(),
    CartTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomeTab> {
  final List<MenuItem> menuItems = [
    MenuItem("https://roasting-conflict.000webhostapp.com/images/burger.jpg", "burger", 10.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/coffe.jpg", "coffe", 12.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/cold%20coffee.jpg", "cold coffee", 9.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/dosa.jpg", "dosa", 7.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/fafda%20jalebi.jpg", "Fafda Jlebi", 5.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/gujarati-thali.jpg", "gujarati-thali", 10.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/pizza.jpg", "pizza", 12.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/poha.jpg", "poha", 9.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/Samosa.jpg", "Samosa", 7.99),
    MenuItem("https://roasting-conflict.000webhostapp.com/images/vadapav.jpg", "vadapav", 5.99),
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> tags = ["Recommend", "Popular", "Noodles", "Pizza", "Burger", "Coffee"];
    bool _color = true; // Initialize _color with a default value

    return Column(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Container(
          color: Colors.white,
          height: 55, // Set the desired height
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: tags.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.all(12.5),
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: _color ? Colors.orangeAccent : Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: InkWell(
                  onTap: () {},
                  child: Text(tags[index], style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: menuItems.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added ${menuItems[index].name} to cart'),
                    ),
                  );
                },
                child: Card(
                  elevation: 5.0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.network(menuItems[index].image, height: 100),
                      Text(
                        menuItems[index].name,
                        style: TextStyle(fontSize: 20.0),
                      ),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            '\$${menuItems[index].price.toStringAsFixed(2)}',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                            color: Colors.amber,
                            alignment: Alignment.center,
                            height: 25,
                            width: 25,
                            child: Center(
                              child: IconButton(
                                padding: EdgeInsets.all(0.5),
                                onPressed: () async {
                                  SharedPreferences prefs = await SharedPreferences.getInstance();
                                  List<String> cartItems = prefs.getStringList('cartItems') ?? [];
                                  cartItems.add(menuItems[index].name + " " + menuItems[index].price.toString());
                                  await prefs.setStringList('cartItems', cartItems);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text('Added ${menuItems[index].name} to cart'),
                                    ),
                                  );
                                },
                                icon: Icon(Icons.add),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MenuItem {
  final String image;
  final String name;
  final double price;

  MenuItem(this.image, this.name, this.price);
}
