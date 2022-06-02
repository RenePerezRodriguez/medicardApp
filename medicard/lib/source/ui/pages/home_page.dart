import 'package:flutter/material.dart';
import 'package:medicard/source/ui/pages/sing_up.dart';
import 'package:medicard/source/ui/widgets/Icon_Container.dart';
import 'package:medicard/source/ui/widgets/login_form.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 40.0,
            vertical: 100,
          ),
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                const IconContainer(
                  url: 'images/medicard_logo-transparente.png',
                ),
                const Text(
                  'MEDICARD',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                const Text(
                  'Seguros contigo',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black
                  ),
                ),
                const Divider(
                  height: 100.0,
                ),
                //Formulario LOGIN
                const LoginForm(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
