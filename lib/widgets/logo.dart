import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String titulo;

  const Logo({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        width: 150,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/grupo-de-chat.png')),
            SizedBox(height: 20),
            Text(this.titulo, style: TextStyle(fontSize: 30))
          ],
        ),
      ),
    );
  }
}
