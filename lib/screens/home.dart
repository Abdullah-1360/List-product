import 'package:flutter/material.dart';
import '../models/product.dart';
import 'details.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Create a list of products
  final List<Product> products = [
    Product(
      name: 'Apple',
      image: 'assets/img.png',
      price: 100,
      description: 'Tasty and healthy! Just don\'t eat it!',
    ),
    Product(
      name: 'Banana',
      image: 'assets/img_1.png',
      price: 200,
      description: 'Don\'t eat it!',
    ),
    Product(
      name: 'Orange',
      image: 'assets/img_2.png',
      price: 300,
      description: 'A delicious fruit!'),
    Product(
      name: 'Grapes',
      image: 'assets/img_3.png',
      price: 400,
      description: 'Round and Juicy!',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
        backgroundColor: Colors.blueGrey[200],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              Product product = products[index];
              return Card(
                child: ListTile(
                  leading: Image.asset(product.image),
                  title: Text(product.name),
                  subtitle: Text('\RS ${product.price}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: product),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
