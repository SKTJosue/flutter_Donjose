import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:soyuab/pages/login_pages.dart';
import 'package:soyuab/pages/menu_pages.dart';

void main() {
  runApp(const MiApp());
} 
class MiApp extends StatelessWidget {
  const MiApp({super.key});
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    final token = box.read('token');
    
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:token != null && token.isNotEmpty ?  const MenuPages() : const LoginPage(),
    );
  }
}