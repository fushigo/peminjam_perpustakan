import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_b/app/routes/app_pages.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterView'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.namaController,
                  decoration: const InputDecoration(hintText: "Masukan Nama"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Nama tidak boleh kosong";
                    }
                    return null;
                  },
                ),
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
                  controller: controller.telpController,
                  decoration: const InputDecoration(hintText: "Masukan Telepone"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Telepone tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.alamatController,
                  decoration: const InputDecoration(hintText: "Masukan Alamat"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Alamat tidak boleh kosong";
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
                ElevatedButton(
                    onPressed: () {
                      controller.register();
                    },
                    child: Text("Register")),
                )],
            ),
          )
      ),
    );
  }
}
