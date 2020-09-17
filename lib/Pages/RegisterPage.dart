import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Crear cuenta"),
        backgroundColor: Colors.black54,
      ),
      body: new Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.blue,
                elevation: 8,
                onPressed: () => Navigator.pushNamed(context, ('/empleado')),
                child: Text(
                  "Empleado",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                color: Colors.blue,
                elevation: 8,
                onPressed: () => Navigator.pushNamed(context, ('/empresa')),
                child: Text(
                  "Empresa",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
