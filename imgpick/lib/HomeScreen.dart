// import 'dart:html';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:image_picker/image_picker.dart';
//import 'package:imgoick/Controller/ImageController.dart';
import 'package:imgpick/Controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ImagePickerController controller = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Obx(() {
      return Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: CircleAvatar(
              radius: 40,
              backgroundImage: controller.imagePath.isNotEmpty
                  ? FileImage(File(controller.imagePath.toString()))
                  : null,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.getImage();
              },
              child: Text("Pick Image"))
        ],
      );
    })));
  }
}
