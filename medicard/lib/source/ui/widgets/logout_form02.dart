import 'package:flutter/material.dart';
import 'package:medicard/source/ui/widgets/Icon_Container.dart';
import 'package:medicard/source/ui/widgets/input_text.dart';


class LogoutFomr02 extends StatefulWidget {
  const LogoutFomr02({Key? key}) : super(key: key);

  @override
  State<LogoutFomr02> createState() => _LogoutFomr02State();
}

class _LogoutFomr02State extends State<LogoutFomr02> {

  GlobalKey<FormState> _formkey = GlobalKey();
  String _correoElectronico='';
  String _numeroCelular='';
  String _documentoIdentidad='';

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
            label: 'Correo Elctronico',
            hint: 'Correo Elctronico',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.datetime,
            obsecure: false,
            onChanged: (data) {
              _correoElectronico = data;
            },
          ),
          InputText(
            label: 'Numero de celular',
            hint: 'Numero de celular',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.datetime,
            obsecure: false,
            onChanged: (data) {
              _numeroCelular = data;
            },
          ),
          InputText(
            label: 'Documento de Identidad',
            hint: 'Documento de Identidad',
            icono: Icon(Icons.verified_user),
            keyboard: TextInputType.datetime,
            obsecure: false,
            onChanged: (data) {
              _numeroCelular = data;
            },
          ),
          Divider(
            height: 50.0,
          ),
          Divider(
            height: 25.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> [
              const IconContainer(
                url: 'images/medicard_logo-transparente.png',
              ),
              const Text(
                'Al registrarte, aceptas los Terminos y Condiciones de uso y Politicas de privacidad de Medicard.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(
                height: 20.0,
              ),
              const Text(
                'Para conocer más, consulta nuestros',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black
                ),
              ),
              FlatButton(
                onPressed: (){
                  Navigator.pushNamed(context, 'terminos_condiciones');
                },
                child: Text(
                  'Terminos & Condiciones',
                  style: TextStyle(
                    color: Color.fromRGBO(230, 45, 40, 100),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            height: 50.0,
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
                  'CREAR CUENTA',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ],
          ),

        ],
      ),

    );
  }
}
