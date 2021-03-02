import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'Welcome to flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ハロー'),
        ),
        // body: sampleList(context),
        body: Center(
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }
}

Widget sampleList(BuildContext context) {
  return Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.7,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return Container(color: Colors.grey, margin: EdgeInsets.all(16));
          }));
}
