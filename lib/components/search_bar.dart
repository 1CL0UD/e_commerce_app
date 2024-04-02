import 'package:flutter/material.dart';

class SearchBarComponent extends StatelessWidget {
  const SearchBarComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SearchAnchor.bar(
      barElevation: MaterialStateProperty.all(0),
      barHintText: 'Search Store',
      barShape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(12.0), // Adjust the border radius as needed
        ),
      ),
      barBackgroundColor: MaterialStateProperty.all(Colors.grey[300]),
      suggestionsBuilder: (BuildContext context, SearchController controller) {
        return List<Widget>.generate(
          5,
          (int index) {
            return ListTile(
              titleAlignment: ListTileTitleAlignment.center,
              title: Text('Initial list item $index'),
            );
          },
        );
      },
    );
  }
}
