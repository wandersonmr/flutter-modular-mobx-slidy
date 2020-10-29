import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'listlocalstorage_controller.dart';
import 'components/item/item_widget.dart';

class ListlocalstoragePage extends StatefulWidget {
  final String title;
  const ListlocalstoragePage({Key key, this.title = "Listlocalstorage"})
      : super(key: key);

  @override
  _ListlocalstoragePageState createState() => _ListlocalstoragePageState();
}

class _ListlocalstoragePageState
    extends ModularState<ListlocalstoragePage, ListlocalstorageController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: controller.setText,
        ),
        actions: <Widget> [
          Observer(builder: (_){
            return IconButton(
              icon: Icon(Icons.add),
              onPressed: controller.text.isEmpty ? null : controller.save,
            );
          })
        ],
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (_, index){
            return ItemWidget(index: index,);
          }
        );
      }),
    );
  }
}
