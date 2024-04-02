import 'package:e_commerce_app/components/search_bar.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: SearchBarComponent(),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 4,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) => Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green[300]!.withOpacity(0.4),
                            border: Border.all(
                                color: Colors.green[300]!.withOpacity(1.0)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Image.asset(
                                    'assets/images/fruit_images/fruit (1).png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const Text("123"),
                            ],
                          ),
                        ),
                      )),
            ),
          ),
        ],
      ),
    );
  }
}
