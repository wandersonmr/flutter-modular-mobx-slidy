import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {

  final String title;

  ItemWidget({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: IconButton(
        icon: Icon(Icons.cancel, color: Colors.red,), 
        onPressed: (){}
      ),
    );
  }
}
