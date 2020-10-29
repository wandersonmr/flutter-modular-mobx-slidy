import 'package:firstmodular/app/modules/home/components/item/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Observer(
        builder: (_) {
          if (controller.pokemons.error != null) {
            print(controller.pokemons.error);
            return Center(child: Text("Error"));
          }
          if (controller.pokemons.value == null) {
            return Center(child: CircularProgressIndicator());
          }

          var list = controller.pokemons.value;

          return ListView.builder(
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return ItemWidget(
                title: list[index].name,
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Modular.to.pushNamed("/list");
        },
      ),
    );
  }
}
