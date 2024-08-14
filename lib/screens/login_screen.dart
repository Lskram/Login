import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_hospital,
                  size: 80, color: AppTheme.primaryColor),
              SizedBox(height: 32),
              CustomTextField(hintText: "อีเมล"),
              SizedBox(height: 16),
              CustomTextField(hintText: "รหัสผ่าน", obscureText: true),
              SizedBox(height: 24),
              CustomButton(
                text: "เข้าสู่ระบบ",
                onPressed: () {
                  // TODO: Implement login logic
                },
              ),
              SizedBox(height: 16),
              TextButton(
                child: Text("ยังไม่มีบัญชี? ลงทะเบียน"),
                onPressed: () {
                  // TODO: Navigate to registration screen
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
