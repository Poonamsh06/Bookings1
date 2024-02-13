import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingsPageController extends GetxController {
  final firstName = ''.obs;
  final lastName = ''.obs;
  final email = ''.obs;
  final phoneNumber = ''.obs;
  final address = ''.obs;
  final identityProof = ''.obs;
  final rooms = ''.obs;
  final guests = ''.obs;
  final checkInTime = ''.obs;
  final checkOutTime = ''.obs;

  void saveFormDataToFirestore(BuildContext context) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      await firestore.collection('users').add({
        'firstname': firstName.value,
        'lastname': lastName.value,
        'email': email.value,
        'phone': phoneNumber.value,
        'address': address.value,
        'identityproof': identityProof.value,
        'rooms': rooms.value,
        'guests': guests.value,
        'check-out Time': checkInTime.value,
        'check-in time': checkOutTime.value
      });
    } catch (error) {
      print(error);
      Get.snackbar('Error', 'Failed to save form data: $error');
    }
  }
}
