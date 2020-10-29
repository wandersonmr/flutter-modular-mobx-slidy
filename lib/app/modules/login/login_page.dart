import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'components/custom_icon_button.dart';
import 'components/custom_text_field.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Image(image: AssetImage('images/logo-white.gif')),
            ),
            Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Observer(
                      builder: (_){
                        return CustomTextField(
                          hint: 'E-mail',
                          prefix: Icon(Icons.account_circle),
                          textInputType: TextInputType.emailAddress,
                          onChanged: controller.setEmail,
                          enabled: !controller.loading,
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Observer(
                      builder: (_) {
                        return CustomTextField(
                          hint: 'Senha',
                          prefix: Icon(Icons.lock),
                          obscure: !controller.passwordVisible,
                          onChanged: controller.setPassword,
                          enabled: !controller.loading,
                          suffix: CustomIconButton(
                            radius: 32,
                            iconData: controller.passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            onTap: controller.tooglePasswordVisibility,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 16),
                    Observer(
                      builder: (_) {
                        return SizedBox(
                          height: 44,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: controller.loading
                                ? CircularProgressIndicator(
                                    valueColor:
                                        AlwaysStoppedAnimation(Colors.white),
                                  )
                                : Text('Login'),
                            color: Theme.of(context).primaryColor,
                            disabledColor:
                                Theme.of(context).primaryColor.withAlpha(100),
                            textColor: Colors.white,
                            onPressed: controller.loginPressed                      
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
