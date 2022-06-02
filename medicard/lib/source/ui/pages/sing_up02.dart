import 'package:flutter/material.dart';

import '../widgets/Icon_Container.dart';
import '../widgets/logout_form02.dart';


class SingUp02 extends StatefulWidget {
  const SingUp02({Key? key}) : super(key: key);

  @override
  State<SingUp02> createState() => _SingUp02State();
}

class _SingUp02State extends State<SingUp02> {
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
            vertical: 50,
          ),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget> [
                FloatingActionButton(
                    backgroundColor: Colors.transparent,
                    child: Icon(Icons.arrow_back),
                    onPressed: (){
                      Navigator.pop(context);
                    })
              ],
            ),
            Divider(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget> [
                Text(
                  'INGRESE SU INFORMACION',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0
                  ),
                ),
                Divider(
                  height: 25.0,
                ),
                LogoutFomr02(),
              ],
            ),

          ],
        ),
      ),
    );
  }
}