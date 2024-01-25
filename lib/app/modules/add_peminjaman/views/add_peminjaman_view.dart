import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_peminjaman_controller.dart';

class AddPeminjamanView extends GetView<AddPeminjamanController> {
  const AddPeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pinjam buku ${Get.parameters['judul'].toString()}'),
        centerTitle: true,
      ),
      body: Center(
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: controller.tanggalPinjamController,
                  decoration: const InputDecoration(hintText: "Masukan Tanggal Pinjam"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Tanggal Pinjam tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: controller.tanggalKembaliController,
                  decoration: const InputDecoration(hintText: "Masukan Tanggal Kembali"),
                  validator: (value){
                    if(value!.isEmpty){
                      return "Tanggal Kembali tidak boleh kosong";
                    }
                    return null;
                  },
                ),
                ElevatedButton(onPressed: () {
                  controller.post();
                }, child: Text("Pinjam Buku")),
              ],
            ),
          )
      ),
    );
  }
}
