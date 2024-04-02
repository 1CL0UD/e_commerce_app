import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Center(
                child: Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.green[300]!.withOpacity(0.4),
                    border:
                        Border.all(color: Colors.green[300]!.withOpacity(1.0)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Image.network(
                            'https://clipart-library.com/image_gallery2/Fruit.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text("123"),
                    ],
                  ),
                ),
              )),
    );
  }
}
