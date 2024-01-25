import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_kelas_b/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.BOOK),
                child: const Text("Book")
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.PEMINJAMAN),
                child: const Text("Peminjaman")
            )
          ],
        )
      ),
    );
  }
}
