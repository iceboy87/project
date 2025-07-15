import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'controller.dart';

class LoginPage extends StatelessWidget {
  final authController = Get.put(AuthController());

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          height: 40.h,
          width: 80.w,
          decoration: BoxDecoration(
            color: Colors.black26,
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle:
                    TextStyle(color: Colors.white, fontSize: 15.sp)),
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle:
                    TextStyle(color: Colors.white, fontSize: 15.sp)),
              ),
              TextFormField(
                controller: passController,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle:
                    TextStyle(color: Colors.white, fontSize: 15.sp)),
              ),
              ElevatedButton(
                onPressed: () {
                  authController.login();
                },
                child: Text("Login",
                    style: TextStyle(color: Colors.black, fontSize: 15.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
