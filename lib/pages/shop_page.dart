import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 6),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Search a product',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Implement your search logic here
              },
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              padding: const EdgeInsets.fromLTRB(8, 4, 8, 12),
              itemCount: 12,
              itemBuilder: (BuildContext context, int index) {
                return const ProductCard();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: Image.network(
              'https://img.hellofresh.com/w_1920,q_auto,f_auto,c_limit,fl_lossy/c_fill,f_auto,fl_lossy,h_432,q_auto/hellofresh_s3/image/643ee2286638513a700c8d1c-6ce17906.jpg',
            ),
          ),
          const Text(
            'Product A',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Text(
            '1kg',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '#2',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    print('ATC');
                  },
                  child: Icon(Icons.add))
            ],
          ),
        ],
      ),
    );
  }
}
