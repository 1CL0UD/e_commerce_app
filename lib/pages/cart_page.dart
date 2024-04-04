import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});

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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(products.length, (index) {
            return CartCard(
              image: products[index]['image'],
              name: products[index]['name'],
              price: products[index]['price'],
              description: products[index]['description'],
            );
          }),
        ),
      ),
    );
  }
}

class CartCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String description;

  const CartCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              color: Theme.of(context).dividerColor.withOpacity(0.5)),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: SizedBox(
          width: 80.0,
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const Icon(Icons.close)
          ],
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              description,
              style: const TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
            ),
            const SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('Reduce');
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(
                              color: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(0.3)),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.green,
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print('Reduce');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(0),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                          side: BorderSide(
                              color: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(0.3)),
                        ),
                        backgroundColor: Colors.transparent,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
