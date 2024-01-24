import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_b/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.usernameController,
                  decoration: const InputDecoration(hintText: "Masukan Username"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Username tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.passwordController,
                  decoration: const InputDecoration(hintText: "Masukan Password"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Password tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                Obx(() => controller.loading.value?
                CircularProgressIndicator():
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: () {
                      controller.login();
                    }, child: Text("Login")),
                    const SizedBox(height: 20,),
                    ElevatedButton(
                        onPressed: () {
                          Get.toNamed(Routes.REGISTER);
                          },
                        child: Text("Register")),
                  ],
                ))
              ],
            ),
          )
      ),
    );
  }
}