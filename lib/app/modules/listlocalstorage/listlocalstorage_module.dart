import 'listlocalstorage_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'listlocalstorage_page.dart';

class ListlocalstorageModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ListlocalstorageController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => ListlocalstoragePage()),
      ];

  static Inject get to => Inject<ListlocalstorageModule>.of();
}
