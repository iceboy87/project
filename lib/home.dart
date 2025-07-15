import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class HomePage extends StatelessWidget {
  final userController = Get.put(UserController());
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Data",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.logout,color: Colors.white,),
            onPressed: () => authController.logout(),
          ),
        ],
      ),
      body: Obx(() {
        if (userController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: userController.users.length,
          itemBuilder: (context, index) {
            final user = userController.users[index];
            return Card(
              margin: EdgeInsets.all(10),
              elevation: 4,
              child: ListTile(
                title: Text(user.title),
                subtitle: Text(user.body),
              ),
            );
          },
        );
      }),
    );
  }
}
