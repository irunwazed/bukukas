import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'modals/home_modal.dart';

class SlidableScreen extends StatefulWidget {
  @override
  _SlidableScreenState createState() => _SlidableScreenState();
}

class _SlidableScreenState extends State<SlidableScreen> {
  
  final List<HomeModal> items = List.generate(
    20,
    (i) => HomeModal(
      i,
      'Slide Bar $i',
      'Slide Bar $i',
      Colors.green
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabBar Widget'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index){
            return _getSlidable(items[index]);
          },
          itemCount: items.length,
        )
      ),
    );
  }

  Widget _getSlidable(data){
    final HomeModal _data = data;
    return Slidable(
      key: Key(_data.titles),
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.white,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.green[700],
            child: Icon(Icons.arrow_upward),
            foregroundColor: Colors.white,
          ),
          title: Text(_data.titles),
          subtitle: Text(_data.subtitle),
        ),
      ),
      
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Update',
          color: Colors.blue[700],
          icon: Icons.edit
          // onTap: () => _showSnackBar('Delete'),
        ),
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red[700],
          icon: Icons.delete,
          // onTap: () => _showSnackBar('Delete'),
        ),
      ],
    );
  }
}