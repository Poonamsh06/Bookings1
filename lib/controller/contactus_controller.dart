import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactusController extends GetxController {
  final name = ''.obs;

  final email = ''.obs;
  final phone = ''.obs;

  void saveContactusToFirestore(BuildContext context) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      await firestore.collection('contactUs').add({
        'name': name.obs,
        'email': email.value,
        'phoneno.': phone.value,
      });
    } catch (error) {
      print(error);
      Get.snackbar('Error', 'Failed to save form data: $error');
    }
  }
}
