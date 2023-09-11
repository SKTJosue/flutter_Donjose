import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:soyuab/component/login/my_textfield.dart';
import 'package:soyuab/controllers/authentication.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controllerUser = TextEditingController();
  final controllerPassword = TextEditingController();
  final AuthenticationController _authenticationController = Get.put(AuthenticationController());
  //sign user  in method
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/imagenes/fondo.jpg"),
            fit: BoxFit.cover
            ),
        ),
        child: SafeArea(
          child: Center(
            child:ListView(           
              children: [
              const SizedBox(height: 25.0,),
              SvgPicture.asset("lib/svg/marcamenu.svg",
                width: 100.0,
                height: 130.0,
                color: Colors.white,
              ),
              const SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset("lib/imagenes/marca evento.png",
                height: 175.0,
                fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 0.0,
              ),
              loginTextField(controller: controllerUser, hintText: "Usuario", obscureText: false),
              const SizedBox(
                height: 5.0,
              ),
              loginTextField(controller: controllerPassword, hintText: "password", obscureText: true),
              const SizedBox(height: 10.0,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 15,
                  ),
                ),
                onPressed:() async{
                  await _authenticationController.login(
                    username: controllerUser.text.trim(), 
                    password: controllerPassword.text.trim(),
                  );
                }, 
                child: Obx(() {
                    return _authenticationController.isLoading.value?
                    const CircularProgressIndicator(
                      color: Colors.white,
                    )
                    :Text('Iniciar Sesion');
                  }
                ),
              ), 
            ],
            ),
          ),
        ),
        ),
      );
  }
}