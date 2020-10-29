import 'package:dio/dio.dart';
import 'package:firstmodular/app/modules/home/repositories/pokemon_repository.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokemonRepository>())),
        Bind((i) => PokemonRepository(i.get<Dio>())), //i.get pegando a dependencia do dio
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
