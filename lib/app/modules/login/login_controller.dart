import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {

  _LoginControllerBase(){
    autorun((_){

    });
  }

  @observable
  String email = '';

  @action
  void setEmail(String value) => email = value;

  @observable
  String password = '';

  @action
  void setPassword(String value) => password = value;

  @observable
  bool passwordVisible = false;

  @action
  void tooglePasswordVisibility() => passwordVisible = !passwordVisible;

  @observable
  bool loading = false;

  @computed
  bool get isEmailValid => RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email);

  @computed
  bool get isPasswordValid => password.length >= 6;

  @computed
  Function get loginPressed =>
    (isEmailValid && isPasswordValid && !loading) ? login : null;

  @action
  Future<void> login() async {
    loading = true;

    // processar 
    await Future.delayed( Duration(seconds: 2));
    Modular.to.pushReplacementNamed('/home');

    loading = false;
  }
}
