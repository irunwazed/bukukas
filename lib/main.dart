import 'package:flutter/material.dart';
import 'slidable.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/slidable',
    routes: {
      '/': (context) => MyStatelessWidget(),
      '/slidable': (context) => SlidableScreen(),
    },
  )
);

class MyStatelessWidget extends StatelessWidget {
  // const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
      ),
      body: Container(
        child: Text('tes'),
      ),
    );
  }
}
