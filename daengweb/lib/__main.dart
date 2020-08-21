import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: Icon(Icons.home),
          title: Text('DW Flutter Basic'),
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.archive),
                  Text('Artikel Terbaru',
                      style: new TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                        'https://flutter.io/images/homepage/header-illustration.png'),
                    Text('Belajar Flutter')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

