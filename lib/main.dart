import 'dart:async';
import 'dart:convert';
import 'package:TCH_App/Pages/PerfilEmpleado.dart';
import 'package:TCH_App/Pages/PerfilEmpresa.dart';
import 'package:TCH_App/Pages/Suscripcion.dart';
import 'package:TCH_App/Pages/empresa.dart';
import 'package:TCH_App/Pages/empleado.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:TCH_App/Pages/RegisterPage.dart';

void main() => runApp(new LoginApp());

String username = '';

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TCHAPP",
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/empleado': (BuildContext context) => new Empleado(),
        '/empresa': (BuildContext context) => new Empresa(),
        '/LoginPage': (BuildContext context) => new LoginPage(),
        '/RegisterPage': (BuildContext context) => new RegisterPage(),
        '/PerfilEmpleado': (BuildContext context) => new PerfilEmpleado(),
        '/PerfilEmpresa': (BuildContext context) => new PerfilEmpresa(),
        '/Suscripcion': (BuildContext context) => new Suscripcion(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerUser = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();

  String mensaje = '';

  Future<List> login() async {
    final response = await http.post("", body: {
      "username": controllerUser.text,
      "password": controllerPass.text,
    });

    var datauser = json.decode(response.body);

    if (datauser.length == 0) {
      setState(() {
        mensaje = "Datos incorrectos";
      });
    } else {
      if (datauser[0]['unknown'] == 'emprendedor')
        Navigator.pushReplacementNamed(context, '/emprendedor');
      if (datauser[0]['unknown'] == 'ofertador')
        Navigator.pushReplacementNamed(context, '/ofertador');
    }
    setState(() {
      username = datauser[0]['username'];
    });

    return datauser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Form(
        child: Container(
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: 77.0),
                child: new CircleAvatar(
                  backgroundColor: Color(0xF81F7F3),
                  child: new Image(
                    width: 135,
                    height: 135,
                    image: new AssetImage("assets/images/userTCH.png"),
                  ),
                ),
                width: 170.0,
                height: 170.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(
                  top: 93,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      padding: EdgeInsets.only(
                        top: 4,
                        left: 16,
                        right: 16,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: TextFormField(
                        controller: controllerUser,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          hintText: 'UserID or e-mail',
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      margin: EdgeInsets.only(
                        top: 32,
                      ),
                      padding: EdgeInsets.only(
                        top: 4,
                        left: 16,
                        right: 16,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: controllerPass,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.black,
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: new Text("Ingresar"),
                          color: Colors.orangeAccent,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/RegisterPage');
                            //login();
                            //Navigator.pop(context);
                          },
                        ),
                        RaisedButton(
                          child: new Text("Registrar"),
                          color: Colors.orangeAccent,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/RegisterPage');
                            //login();
                            //Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                    Text(
                      mensaje,
                      style: TextStyle(fontSize: 25.0, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
