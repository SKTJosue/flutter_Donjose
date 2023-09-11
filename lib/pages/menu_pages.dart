import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';
import 'package:soyuab/pages/login_pages.dart';


class MenuPages extends StatefulWidget {
  const MenuPages({super.key});

  @override
  State<MenuPages> createState() => _MenuPages();
}
  void _handleLogout() {
    final box = GetStorage(); // Obtiene la instancia de GetStorage
    box.remove('token'); // Elimina el token almacenado
    Get.offAll(() => LoginPage()); // Redirige al usuario a la página de inicio de sesión
  }
class _MenuPages extends State<MenuPages> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40.0),
            height:160 , // Altura personalizada para el encabezado
            color: Colors.indigo[900],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.contain,
                      child:Image.asset(
                      "lib/imagenes/marca evento.png",
                      width: 120.0,
                      height: 90.0,
                      fit: BoxFit.contain,
                    ),
                    )
                    
                  ],
                ),
                SizedBox(width: 100.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 24.0, // Tamaño de fuente personalizado para el título
                        color: Colors.white, // Color personalizado para el título
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Aquí puedes agregar el contenido de tu página debajo del encabezado personalizado
          Expanded(
            child: Center(
              child: Text("Contenido de la página"),
            ),
          ),
        ],
      ),
    );
  }
}