import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:instagram_app/app/modules/home/controllers/edit_screen_controller.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    // Step 3: Initialize the controller using GetX
    final EditProfileController controller = Get.put(EditProfileController());

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Add navigation logic here
          },
          icon: Icon(Icons.arrow_back_sharp),
        ),
        title: Text("Edit Profile",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // Step 4: Use Obx to make the TextField reactive
              Obx(() => buildTextField(controller.name.value, "Name")),
              Obx(() => buildTextField(controller.username.value, "Username")),
              Obx(() => buildTextField(controller.profile.value, "Profile")),
              Obx(() => buildTextField(
                controller.dob.value,
                "DOB",
                suffixIcon: IconButton(
                  onPressed: () {
                    // Add date picker logic here
                  },
                  icon: Icon(Icons.calendar_month),
                ),
              )),
              Obx(() => buildTextField(controller.mail.value, "Mail",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.outgoing_mail),
                  ))),
              Obx(() => buildTextField(controller.contact.value, "Contact")),
              Obx(() => buildTextField(controller.gender.value, "Gender",
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Add gender selection logic here
                    },
                    icon: Icon(Icons.arrow_drop_down_outlined),
                  ))),
              Obx(() => buildTextField(controller.site.value, "Site")),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Switch to Professional Account",
                  style: TextStyle(color: Colors.blue, fontSize: 18),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add logic to handle profile update
                },
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
                  backgroundColor:
                  MaterialStatePropertyAll(Color(0xffff6c81)),
                  fixedSize: MaterialStatePropertyAll(Size(350, 60)),
                ),
                child: Center(
                    child: Text(
                      "Update",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Step 5: Create a helper method to avoid repetitive code
  Widget buildTextField(
      TextEditingController controller,
      String hintText, {
        Widget? suffixIcon,
      }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
            color: Color(0xfff5f5f5), borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              filled: true,
              hintText: hintText,
              suffixIcon: suffixIcon,
              fillColor: Color(0xfff5f5f5),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff5f5f5)),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff5f5f5)),
                  borderRadius: BorderRadius.circular(10)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xfff5f5f5)),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}