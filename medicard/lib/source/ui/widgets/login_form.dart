import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicard/source/ui/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formkey = GlobalKey();
  late String _email;
  late String _password;
  _submit(){
    final isLogin = _formkey.currentState?.validate();
    print('IsLogin Form $isLogin');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
        child: Column(
          children: <Widget>[
            InputText(
                label: 'Correo Electronico',
                hint: 'Correo Electronico',
                icono: Icon(Icons.verified_user),
                keyboard: TextInputType.emailAddress,
                obsecure: false,
                onChanged: (data) {
                  _email = data;
                },
               /* validator: (data) {
                  if(!data.contains('@')) {
                    return "CORREO INVALIDO";
                  }
                  return null;*/
            ),
            Divider(
              height: 15.0,
            ),
            InputText(
                label: 'contraseña',
                hint: 'contraseña',
                icono: Icon(Icons.lock_outline),
                keyboard: TextInputType.visiblePassword,
                obsecure: true,
                onChanged: (data){
                  _password = data;
                },
            ),
            Divider(
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                color: Color.fromRGBO(67, 186, 193, 100),
                onPressed: (){
                  Navigator.pushNamed(context, 'user_page');
                },
                child: Text(
                  'Iniciar Sesion',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget> [
                Text(
                  'Aun no eres parte de medicard?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                FlatButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'sing_up');
                    },
                    child: Text(
                      'Crear Cuenta',
                      style: TextStyle(
                          color: Color.fromRGBO(230, 45, 40, 100),
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                ),
              ],
            )
          ],
        ));
  }
}
