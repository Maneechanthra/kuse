import 'package:flutter/material.dart';
import 'package:kuse/login/login_alumi.dart';
import 'package:kuse/register/education_info.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerForm = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    nameController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "สมัครสมาชิก",
        style: TextStyle(
          fontSize: 18,
        ),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _registerForm,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: Image.asset("assets/img/logo/kuse_1.png"),
                ),
                const Text(
                  "สมัครสมาชิก",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: SizedBox(
                    child: TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_2),
                        hintText: 'ชื่อ-นามสกุล',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'กรุณากรอกชื่อ-นามสกุล' : null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: SizedBox(
                    child: TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: 'อีเมล',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? "กรุณากรอกอีเมล" : null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    child: TextFormField(
                      controller: passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'รหัสผ่าน',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? "กรุณากรอกรหัสผ่าน" : null;
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    child: TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password),
                        hintText: 'ยืนยันรหัสผ่าน',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty
                            ? "กรุณากรอกยืนยันรหัสผ่าน"
                            : null;
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    if (_registerForm.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EducationPage()));
                    } else {
                      print("กรอกข้อมูลไม่ถูกครบถ้วนหรือไม่ถูกต้อง");
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 109, 8, 0),
                    ),
                    child: const Center(
                      child: Text(
                        "ถัดไป",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Row(
                        children: [
                          const Text(
                            "มีบัญชีผู้ใช้แล้ว ?",
                            style: TextStyle(color: Colors.black),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginAlumniPage()));
                              },
                              child: const Text(
                                "เข้าสู่ระบบ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 126, 8, 0)),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
