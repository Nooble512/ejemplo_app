
import 'package:flutter/material.dart';
import 'package:ejemplo_app/src/singin.dart';
import 'package:ejemplo_app/src/inicio.dart';
import 'package:toast/toast.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

String email = "";
String password = "";

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // appBar es la cinta que aparece arriba con el titulo
        title: const Text("Inicio"), // Se usa const cuando el widget no va a cambiar (osea es constante) como un titulo
      ),
      body: SingleChildScrollView( // body es el cuerpo de la aplicacion
        child: Column( // Child solo permite poner un widget
          children: <Widget>[ // children es una propiedad de Column que permite poner varios widget en una lista `[ ]`
            const Text('Prueba'), // Text es para introducer texto
            const SizedBox(height: 50,), // SizedBox permite hacer una separa cion entre widgets cuando se usa una lista
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                  )
                ]
              ),
              height: 60,
              child: TextField( // TextField es un campo de texto editable por el usuario
                keyboardType: TextInputType.emailAddress,
                onChanged: (text){ // onChanged es para cuando el usuario introduce un valor en el campo se ejecute una accion, en este caso reescribir email.
                  email = text; // text es el texto que esta ingresando el usuario
                },
                style: const TextStyle(
                  color: Colors.black87
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xff0b619c)
                  ),
                hintText: 'Email', // hintText es el texto que contendra adentro el campo que desaparace una vez que el usuario introduce valores en el campo
                hintStyle: TextStyle( // es el estilo para el hideText
                  color: Colors.black38
                )
                ),
              ),
            ),
            const SizedBox(height: 50,),
            Container(
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                  )
                ]
              ),
              height: 60,
              child: TextField(
                obscureText: true,
                onChanged: (value) {
                  password = value;
                },
                style: const TextStyle(
                  color: Colors.black87
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff0b619c)
                  ),
                hintText: 'Password',
                hintStyle: TextStyle(
                  color: Colors.black38
                )
                ),
              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton( // ElevatedButton es el boton que permite hacer acciones
              onPressed: (){ // onPressed es la accion que hara el programa cuando el usuario presiona el boton
                // Toast se instala en el documento pubspec.yaml
                // en dicho documento se busca dependencies
                // y se introduce el Widget que ce requiere instalar
                // un salto de linea debajo jusco como esta 'toast: ^0.1.5'
                // una vez introducido el Widget se guarda el documento (ctrl + s)
                // se instala solo.
                if (email == ''){
                  Toast.show("El email esta vacio", context, duration: Toast.LENGTH_LONG, gravity: Toast.CENTER);
                } else if (password == ''){
                  Toast.show("El password esta vacio", context, duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                } else if (password != email) {
                  Toast.show("Contraseña incorrecta", context, duration: Toast.LENGTH_LONG);
                } else {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Inicio()));
                }
              },
              child: const Text('Acceder'), // Es el texto del boton
            ),
             ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SingIn()));
              },
              child: const Text('Crear usuario'),
            ),
          ],
        ),
      ),
    );
  }
}