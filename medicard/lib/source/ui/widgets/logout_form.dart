import 'package:flutter/material.dart';
import 'package:medicard/source/ui/widgets/input_text.dart';

class LogoutForm extends StatefulWidget {
  const LogoutForm({Key? key}) : super(key: key);

  @override
  State<LogoutForm> createState() => _LogoutFormState();
}

class _LogoutFormState extends State<LogoutForm> {
  GlobalKey<FormState> _formkey = GlobalKey();
  String _nombres = '';
  String _primerApellido = '';
  String _segundoApellido = '';
  String _fechaNacimiento='';
  String _sexo='';
  String _ciudad='';

  _submit(){
    final isLogin = _formkey.currentState?.validate();
    print('IsLogin Form $isLogin');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget> [
          InputText(
            label: 'Nombres',
            hint: 'Nombres',
            icono: Icon(Icons.supervised_user_circle),
            keyboard: TextInputType.name,
            obsecure: false,
            onChanged: (data) {
              _nombres = data;
            },
          ),
          InputText(
            label: 'Primer Apellido',
            hint: 'Primer Apellido',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.name,
            obsecure: false,
            onChanged: (data) {
              _primerApellido = data;
            },
          ),
          InputText(
            label: 'Segundo Apellido',
            hint: 'Segundo Apellido',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.name,
            obsecure: false,
            onChanged: (data) {
              _segundoApellido = data;
            },
          ),
          Divider(
            height: 50.0,
          ),
          InputText(
            label: 'Fecha Nacimiento',
            hint: 'Fecha Nacimiento',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.datetime,
            obsecure: false,
            onChanged: (data) {
              _segundoApellido = data;
            },
          ),
          InputText(
            label: 'Sexo',
            hint: 'Sexo',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.datetime,
            obsecure: false,
            onChanged: (data) {
              _segundoApellido = data;
            },
          ),
          InputText(
            label: 'Ciudad',
            hint: 'Ciudad',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.datetime,
            obsecure: false,
            onChanged: (data) {
              _segundoApellido = data;
            },
          ),
          Divider(
            height: 50.0,
          ),
          Divider(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              FlatButton(
                color: Color.fromRGBO(67, 186, 193, 100),
                onPressed: (){
                  Navigator.pushNamed(context, 'sing_up02');
                },
                child: Text(
                  'CONTINUAR',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
