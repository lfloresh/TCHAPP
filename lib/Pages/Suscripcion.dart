import 'package:flutter/material.dart';

class Suscripcion extends StatefulWidget {
  @override
  _SuscripcionState createState() => _SuscripcionState();
}

class _SuscripcionState extends State<Suscripcion> {
  bool _isFst = false, _isSnd = false, _isTrd = false, _isFth = false;
  void onChanged1(bool value) {
    setState(() {
      _isFst = value;
    });
  }

  void onChanged2(bool value) {
    setState(() {
      _isSnd = value;
    });
  }

  void onChanged3(bool value) {
    setState(() {
      _isTrd = value;
    });
  }

  void onChanged4(bool value) {
    setState(() {
      _isFth = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        centerTitle: true,
        title: new Text("Suscripción Empresa"),
        backgroundColor: Colors.black54,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    value: _isFst,
                    onChanged: (bool value) {
                      onChanged1(value);
                    },
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                  ),
                  Text(
                    """                  
                  Sala de reunión
                  Publicación de proyectos
                  Filtración de personal 
                  Control de asignación de tareas 
                  Sala de proyectos
                            Tiempo: 2 meses""",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    value: _isSnd,
                    onChanged: (bool value) {
                      onChanged2(value);
                    },
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                  ),
                  Text(
                    """                  
                  Sala de reunión
                  Publicación de proyectos
                  Filtración de personal/específico 
                  Control de asignación de tareas
                  Control de asistencia 
                  Sala de proyectos
                            Tiempo: 6 meses""",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    value: _isTrd,
                    onChanged: (bool value) {
                      onChanged3(value);
                    },
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                  ),
                  Text(
                    """                  
                  Sala de reunión
                  Publicación de proyectos
                  Filtración de personal/específico 
                  Control de asignación de tareas  
                  Control de asistencia 
                  Sala de proyectos
                            Tiempo: 1 año""",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Costo : ",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 130),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      border: Border.all(
                        width: 1,
                        color: Colors.blue,
                      ),
                    ),
                    child: Text(
                      "#Costo",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Checkbox(
                    value: _isFth,
                    onChanged: (bool value) {
                      onChanged4(value);
                    },
                    activeColor: Colors.white,
                    checkColor: Colors.black,
                  ),
                  Text(
                    """
                  Aceptar términos y condiciones""",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 130,
                ),
                color: Colors.blue,
                elevation: 10,
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/LoginPage', (_) => false),
                child: Text(
                  "Registrar",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 130,
                ),
                color: Colors.blue,
                elevation: 10,
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/LoginPage', (_) => false),
                child: Text(
                  "Cancelar",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
