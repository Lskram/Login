import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Text("ลงทะเบียน"),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomTextField(hintText: "ชื่อ"),
              SizedBox(height: 16),
              CustomTextField(hintText: "นามสกุล"),
              SizedBox(height: 16),
              CustomTextField(hintText: "อีเมล"),
              SizedBox(height: 16),
              CustomTextField(hintText: "รหัสผ่าน", obscureText: true),
              SizedBox(height: 16),
              CustomTextField(hintText: "ยืนยันรหัสผ่าน", obscureText: true),
              SizedBox(height: 24),
              CustomButton(
                text: "ลงทะเบียน",
                onPressed: () {
                  // TODO: Implement registration logic
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
