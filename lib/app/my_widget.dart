import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';

class MyWidget extends StatelessWidget {
  final controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            final word = generateNoun().take(1).elementAt(0).asString;
            return Card(
              margin: const EdgeInsets.all(16.0),
              child: Center(
                  child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text('$word', style: TextStyle(fontSize: 100.0)),
              )),
            );
          },
          scrollDirection: Axis.horizontal),
    );
  }
}
