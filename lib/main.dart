import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(const MiDrawerMonge());

class MiDrawerMonge extends StatelessWidget {
  const MiDrawerMonge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer Monge"),
          centerTitle: true,
          backgroundColor: Color(0xff6ba49c),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.camera_alt_sharp),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ], //Action con icono
          elevation: 8,
        ),
        backgroundColor: const Color(0x00d3e3e5),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text("Veterinaria Huellitas"),
                accountEmail: Text("a.21308051280509@cbtis128.edu.mx"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://raw.githubusercontent.com/YizziaA/Practica1_6J_iOS./main/logo%20principal.jpg"),
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://raw.githubusercontent.com/YizziaA/Practica1_6J_iOS./main/fondito2.webp",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/YizziaA/Practica1_6J_iOS./main/icircular.jpg"),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: NetworkImage(
                        "https://raw.githubusercontent.com/YizziaA/Practica1_6J_iOS./main/huellita%20negra.jpg"),
                  ),
                ],
              ),
              ListTile(
                leading: Icon(
                  Icons.account_box_sharp,
                  color: Colors.black,
                ),
                title: Text(
                  "Usuario",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.accessible,
                  color: Color(0xff000000),
                ),
                title: Text(
                  "Doctores",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_location_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Ubicaciones",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.local_hospital_outlined,
                  color: Colors.black,
                ),
                title: Text(
                  "Servicios",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_home_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  "Locales",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.timer,
                  color: Colors.black,
                ),
                title: Text(
                  "Horarios",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  "Contacto",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
