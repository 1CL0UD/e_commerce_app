import 'package:e_commerce_app/components/search_bar.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  ShopPage({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/images/fruit_images/fruit (1).png',
      'name': 'Product 1',
      'price': '\$100',
      'description': 'Description of Product 1',
    },
    {
      'image': 'assets/images/fruit_images/fruit (2).png',
      'name': 'Product 2',
      'price': '\$150',
      'description': 'Description of Product 2',
    },
    {
      'image': 'assets/images/fruit_images/fruit (3).png',
      'name': 'Product 3',
      'price': '\$50',
      'description': 'Description of Product 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: SearchBarComponent(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 2),
              child: ListView(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exclusive Offer",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 12.0, // Adjust spacing as needed
                      children: List.generate(products.length, (index) {
                        return ProductCard(
                          image: products[index]['image'],
                          name: products[index]['name'],
                          price: products[index]['price'],
                          description: products[index]['description'],
                        );
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Best Selling",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 12.0, // Adjust spacing as needed
                      children: List.generate(products.length, (index) {
                        return ProductCard(
                          image: products[index]['image'],
                          name: products[index]['name'],
                          price: products[index]['price'],
                          description: products[index]['description'],
                        );
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Groceries",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "See All",
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      direction: Axis.horizontal,
                      spacing: 12.0, // Adjust spacing as needed
                      children: List.generate(products.length, (index) {
                        return ProductCard(
                          image: products[index]['image'],
                          name: products[index]['name'],
                          price: products[index]['price'],
                          description: products[index]['description'],
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String description;

  const ProductCard({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.white,
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Image.asset(
              image,
              width: double.infinity,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        style: const TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print("ATC");
                      },
                      child: const Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
