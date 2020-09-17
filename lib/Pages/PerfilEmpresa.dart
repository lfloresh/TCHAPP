import 'package:flutter/material.dart';

class PerfilEmpresa extends StatelessWidget {
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
        title: new Text("Perfil Empresa"),
        backgroundColor: Colors.black54,
      ),
      body: new Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                intSizedBox("Razón Social"),
                intContainer("Razón Social"),
                intSizedBox("RUC"),
                intContainer("RUC"),
                intSizedBox("Dirección física de la empresa"),
                intContainer("Dirección física de la empresa"),
                intSizedBox("Nombre de Contacto"),
                intContainer("Nombre de Contacto"),
                intSizedBox("Teléfono de Contacto"),
                intContainer("Teléfono de Contacto"),
                intSizedBox("Rubro"),
                intContainer("Rubro"),
                SizedBox(height: 20),
                SizedBox(
                  width: 320,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Align(
                        alignment: Alignment(0, 0),
                        child: RaisedButton(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          color: Colors.blue,
                          child: Text(
                            "Subir Logo",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () => print("Subir CV"),
                        ),
                      ),
                      Text(
                        "Logo",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: 130,
                  ),
                  color: Colors.blue,
                  elevation: 10,
                  onPressed: () => Navigator.pushNamed(context, '/Suscripcion'),
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                      fontSize: 15,
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
