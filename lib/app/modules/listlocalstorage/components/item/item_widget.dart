import 'package:firstmodular/app/modules/listlocalstorage/listlocalstorage_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ItemWidget extends StatelessWidget {
  final int index;
  
  final ListlocalstorageController controller = Modular.get();

  ItemWidget({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(controller.list[index]),
      trailing: IconButton(
        icon: Icon(Icons.cancel, color: Colors.red),
        onPressed: () {
          controller.remove(index);
        },
      ),
    );
  }
}
