import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => MyStatelessWidget(),
    },
  )
);

class MyStatelessWidget extends StatelessWidget {
  // const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.cloud_outlined),
              ),
              Tab(
                icon: Icon(Icons.beach_access_sharp),
              ),
              Tab(
                icon: Icon(Icons.brightness_5_sharp),
              ),
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            TabBarView(
              children: <Widget>[
                Center(
                  child: Text('It\'s cloudy here'),
                ),
                Center(
                  child: listData(),
                ),
                Center(
                  child: Text('It\'s sunny here'),
                ),
              ],
            ),
            // DraggableScrollableSheet(
            //   builder: (BuildContext context, ScrollController scrollController){
            //     return Container(
            //       color: Colors.blue,
            //       child: ListView.builder(
            //         controller: scrollController,
            //         itemCount: 20,
            //         itemBuilder: (BuildContext context, int index){
            //           return ListTile(title : Text('Item $index'),);
            //         }),
            //     );
            //   },
            // ),
            // Positioned(
            //   bottom: 0,
            //   child: Container(
            //     padding: EdgeInsets.all(15),
            //     width: width,
            //     decoration: BoxDecoration(
            //       color: Colors.grey,
            //     ),
            //     child: Text("isi")
            //   ),
            // ),
          ]
        ),
      ),
    );
  }

  Widget listData(){

    var listData = [
      {'id': 1, 'nama': 'tes0'},
      {'id': 1, 'nama': 'tes1'},
      {'id': 1, 'nama': 'tes2'},
      {'id': 1, 'nama': 'tes3'},
      {'id': 1, 'nama': 'tes4'},
      {'id': 1, 'nama': 'tes5'},
      {'id': 1, 'nama': 'tes6'},
      {'id': 1, 'nama': 'tes7'},
      {'id': 1, 'nama': 'tes8'},
      {'id': 1, 'nama': 'tes9'},
    ];
    var listData2 = [
      {'id': 1, 'nama': 'tes0'},
      {'id': 1, 'nama': 'tes1'},
      {'id': 1, 'nama': 'tes2'},
      {'id': 1, 'nama': 'tes3'},
      {'id': 1, 'nama': 'tes4'},
      {'id': 1, 'nama': 'tes5'},
      {'id': 1, 'nama': 'tes6'},
      {'id': 1, 'nama': 'tes7'},
      {'id': 1, 'nama': 'tes8'},
      {'id': 1, 'nama': 'tes9'},
    ];

    listData.addAll(listData2);
    listData.addAll(listData2);
    listData.addAll(listData2);
    listData.addAll(listData2);

    return ListView.builder(
      itemBuilder: (context, index){
        return Padding(
          padding: EdgeInsets.all(1),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200]
            ),
            child: Row(
              children: <Widget>[
                Text(listData[index]['nama']),
                SizedBox(
                  width: 10,
                ),
                Text(listData[index]['nama']),
              ],
            ),
          ),
        );
      },
      itemCount: listData.length,
    );
  }

}
