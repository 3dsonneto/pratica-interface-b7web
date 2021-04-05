import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Muro das Lamentações"),
        ),
        body: Column(
          children: [
            Image(
              image: AssetImage("assets/muro.jpg"),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kotel",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "Jerusalem, Israel",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Text("3.891")
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Botao(
                    icon: Icons.call,
                    text: "Ligar",
                  ),
                  Botao(
                    icon: Icons.location_on,
                    text: "Mapa",
                  ),
                  Botao(
                    icon: Icons.share,
                    text: "Compartilhar",
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Botao extends StatelessWidget {
  Botao({
    @required this.icon,
    @required this.text,
  });

  var text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: FlatButton(
            onPressed: null,
            child: Column(children: [
              Icon(
                icon,
                color: Colors.blue,
              ),
              Text(text)
            ])));
  }
}
