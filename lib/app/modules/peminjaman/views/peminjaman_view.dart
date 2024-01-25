import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_b/app/routes/app_pages.dart';

import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          return ListTile(
            leading:  CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/$index")),
            title: Text("${state[index].book!.judul}"),
            subtitle: Text("Status : ${state[index].status}"),
          );
        },
        separatorBuilder: (context, index){
          return const Divider();
        },
      ))
    );
  }
}
