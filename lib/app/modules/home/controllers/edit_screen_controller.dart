import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Step 1: Create GetX Controller
class EditProfileController extends GetxController {
  // Create TextEditingControllers as reactive variables using GetX's Rx type
  var name = TextEditingController().obs;
  var username = TextEditingController().obs;
  var profile = TextEditingController().obs;
  var dob = TextEditingController().obs;
  var mail = TextEditingController().obs;
  var contact = TextEditingController().obs;
  var gender = TextEditingController().obs;
  var site = TextEditingController().obs;

  // You can add methods here for logic like saving the profile, validation, etc.

  @override
  void onClose() {
    // Dispose the controllers to prevent memory leaks
    name.value.dispose();
    username.value.dispose();
    profile.value.dispose();
    dob.value.dispose();
    mail.value.dispose();
    contact.value.dispose();
    gender.value.dispose();
    site.value.dispose();
    super.onClose();
  }
}