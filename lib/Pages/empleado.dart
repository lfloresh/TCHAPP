import 'package:flutter/material.dart';

class Empleado extends StatelessWidget {
  Widget intContainer(String text) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 25.0),
      decoration: BoxDecoration(
        color: Colors.black54,
        border: Border.all(
          width: 1,
          color: Colors.blue,
        ),
      ),
      child: TextField(
        style: TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget intSizedBox(String text) {
    return SizedBox(
      height: 40.0,
      width: 300,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Registro Empleado"),
        backgroundColor: Colors.black54,
      ),
      body: new Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                intSizedBox("Nombre de Usuario"),
                intContainer("Usuario"),
                intSizedBox("Contraseña"),
                intContainer("Contraseña"),
                intSizedBox("Dirección E-mail"),
                intContainer("E-mail"),
                SizedBox(height: 20),
                RaisedButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: 120,
                  ),
                  color: Colors.blue,
                  elevation: 8,
                  onPressed: () =>
                      Navigator.pushNamed(context, '/PerfilEmpleado'),
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
