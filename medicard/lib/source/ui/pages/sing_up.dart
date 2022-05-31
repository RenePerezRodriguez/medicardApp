import 'package:flutter/material.dart';
import 'package:medicard/source/ui/widgets/logout_form.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
        color: Color.fromRGBO(28, 107, 164, 100)
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
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            ),
            Divider(
              height: 25.0,
            ),
            LogoutForm(),
          ],
        )
      ],
    ),
    ),
    );
  }
}