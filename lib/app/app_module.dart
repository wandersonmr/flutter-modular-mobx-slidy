import 'package:firstmodular/app/modules/listlocalstorage/listlocalstorage_module.dart';
import 'package:firstmodular/app/modules/login/login_controller.dart';
import 'package:firstmodular/app/modules/login/login_module.dart';
import 'package:firstmodular/app/pages/splash/splash_page.dart';
import 'package:firstmodular/app/shared/repositories/localstorage/local_storage_interface.dart';
import 'package:firstmodular/app/shared/repositories/localstorage/local_storage_share.dart';

import 'pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:firstmodular/app/shared/utils/constants.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:firstmodular/app/app_widget.dart';
import 'package:firstmodular/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        // $SplashController,
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
        Bind((i) => LoginController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
        Bind<ILocalStorage>((i) => LocalStorageShare())
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/', child: (_, args) => SplashPage()),
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/list', module: ListlocalstorageModule()),
        ModularRouter('/login', module: LoginModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
