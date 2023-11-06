import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/movies.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  
  List<Map<String, dynamic>> movie = [...movies];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice 17 - Dismissed'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView.builder(
        itemCount: movie.length,
        itemBuilder: (BuildContext context, int index) {
          final item = movie[index];
          return Slidable(
            child: ListTile(
              title: Text(item['title_name']),
              subtitle: Text(item['gender']),
            ),
            actionPane: SlidableDrawerActionPane(),
            actions: [
              IconSlideAction(
                caption: 'Add',
                color: Colors.green,
                icon: Icons.library_add,
                onTap: () => onDismissed(index, 'Add'),
              )
            ],
            secondaryActions: [
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.cancel_outlined,
                onTap: () => onDismissed(index, 'Delete'),
              )
            ],
          );
        },
      ),
    );
  }
  
  onDismissed(int index, String accion) {
    setState(() {
      final _snackBar = SnackBar(content: Text('Accion: $accion'));
      movie.removeAt(index);

      switch (accion) { 
        case 'Add':
          ScaffoldMessenger.of(context).showSnackBar(_snackBar);
          break;
        case 'Delete':
          ScaffoldMessenger.of(context).showSnackBar(_snackBar);
          break;
      }
    });
  }
}