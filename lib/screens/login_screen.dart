import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();
  final _studentIdController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _emergencyContactController = TextEditingController();
  final _allergiesController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _surnameController.dispose();
    _studentIdController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _emergencyContactController.dispose();
    _allergiesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var keyboardType = null;
    var keyboardType2 = null;
    var keyboardType3 = null;
    var maxLines = null;
    var maxLines2 = null;
    var maxLines3 = null;
    var maxLines4 = null;
    var keyboardType4 = null;
    var keyboardType5 = null;
    var maxLines5 = null;
    var keyboardType6 = null;
    var maxLines6 = null;
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: Text("ลงทะเบียน"),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextField(
                  controller: _nameController,
                  hintText: "ชื่อ",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกชื่อ';
                    }
                    return null;
                  },
                  keyboardType: keyboardType,
                  maxLines: maxLines,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _surnameController,
                  hintText: "นามสกุล",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกนามสกุล';
                    }
                    return null;
                  },
                  keyboardType: keyboardType2,
                  maxLines: maxLines2,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _studentIdController,
                  hintText: "รหัสนักเรียน",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกรหัสนักเรียน';
                    }
                    return null;
                  },
                  keyboardType: keyboardType3,
                  maxLines: maxLines3,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _phoneController,
                  hintText: "เบอร์โทรศัพท์",
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกเบอร์โทรศัพท์';
                    }
                    return null;
                  },
                  maxLines: maxLines4,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _addressController,
                  hintText: "ที่อยู่",
                  maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกที่อยู่';
                    }
                    return null;
                  },
                  keyboardType: keyboardType4,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _emergencyContactController,
                  hintText: "ผู้ติดต่อฉุกเฉิน (ชื่อและเบอร์โทร)",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'กรุณากรอกข้อมูลผู้ติดต่อฉุกเฉิน';
                    }
                    return null;
                  },
                  keyboardType: keyboardType5,
                  maxLines: maxLines5,
                ),
                SizedBox(height: 16),
                CustomTextField(
                  controller: _allergiesController,
                  hintText: "ประวัติการแพ้ยาหรืออาหาร (ถ้ามี)",
                  validator: (value) {
                    return null;
                  },
                  keyboardType: keyboardType6,
                  maxLines: maxLines6,
                ),
                SizedBox(height: 24),
                CustomButton(
                  text: "ลงทะเบียน",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // TODO: ดำเนินการลงทะเบียน
                      print('ลงทะเบียนสำเร็จ');
                      // แสดงข้อความแจ้งเตือนเมื่อลงทะเบียนสำเร็จ
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('ลงทะเบียนสำเร็จ')),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
