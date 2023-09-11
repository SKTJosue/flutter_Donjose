import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:soyuab/contac/constant.dart';
import 'package:get_storage/get_storage.dart';
import 'package:soyuab/pages/menu_pages.dart';
  
class AuthenticationController extends GetxController{
  final isLoading = false.obs;
  final token = ''.obs;
  final box = GetStorage();
  Future login({
    required String username,
    required String password,
  }) async{
    try{
      isLoading.value=true;
      var data ={
        'username': username,
        'password': password,
      };
      var response = await http.post(
        Uri.parse('${urlLogin}login'),
        headers: {
          'accept': 'application/json',
        },
        body: data,
      );
      if(response.statusCode == 201){
        isLoading.value= false;
        //print(json.decode(response.body));
        Get.off(()=>const MenuPages(),);
        token.value = json.decode(response.body)['token'];
        box.write('token',token.value);
      }else{
        isLoading.value = false;
        Get.snackbar(
          'Error',
          json.decode(response.body)['message'],
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        
        //print(json.decode(response.body));
      }
    } catch (e){
      isLoading.value = false;
      print(e.toString());
    }
  }
}