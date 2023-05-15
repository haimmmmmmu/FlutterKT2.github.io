import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
    
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _quantity = 0;

  void _increaseQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decreaseQuantity() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.star,
                color: Colors.grey,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Image(
            height: 400,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            image: AssetImage('assets/images/macaroon.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Pink Macaroon',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ),
          Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
      child: Row(
        children: [
          IconButton(
            onPressed: _increaseQuantity,
            icon: Icon(Icons.add),
          ),
          Text(
            '$_quantity',
            style: TextStyle(fontSize: 18),
          ),
          IconButton(
            onPressed: _decreaseQuantity,
            icon: Icon(Icons.remove),
          ),
        ],
      ),
    ),
    Text(
      '\$${(10.50 * _quantity).toStringAsFixed(2)}', // Tính tổng giá theo số lượng và làm tròn đến 2 chữ số thập phân
      style: TextStyle(fontSize: 18, color: Colors.purpleAccent),
    ),
  ],
),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Macaroon is a small cake or cookie, typically made from ground almonds, coconut or other nuts with sugar and sometimes flavorings, food coloring, glace cherries, jam or a chocolate coating - or a combination of these or other ingredients',
              style: TextStyle(fontSize: 18,
              color: Colors.purple,
              letterSpacing: 2.0,
              ),
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.grid_view),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.ac_unit),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ],
        
      ),
      backgroundColor: Color.fromRGBO(255, 217, 228,1),
    );
  }
}