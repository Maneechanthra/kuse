import 'package:flutter/material.dart';
import 'package:kuse/botton_navigationbar/navigator_page.dart';
import 'package:kuse/register/register.dart';
import 'package:kuse/widget/forgetpassword.dart';

class LoginAlumniPage extends StatefulWidget {
  const LoginAlumniPage({super.key});

  @override
  State<LoginAlumniPage> createState() => _LoginAlumniPageState();
}

class _LoginAlumniPageState extends State<LoginAlumniPage> {
  final _loginAlumiForm = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "เข้าสู่ระบบศิษย์เก่า",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Form(
            key: _loginAlumiForm,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    width: 150,
                    child: Image.asset("assets/img/logo/kuse_1.png")),
                const Text(
                  "เข้าสู่ระบบ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "เข้าสู่ระบบสำหรับศิษย์เก่า",
                  style: TextStyle(color: Colors.black26),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: "username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? "กรุณากรอกอีเมล" : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password_outlined),
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? "กรุณากรอกรหัสผ่าน" : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    if (_loginAlumiForm.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigatorPage()));
                    } else {
                      print("เข้าสู่ระบบไม่สำเร็จ");
                    }
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 126, 8, 0),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                        child: Text(
                      "เข้าสู่ระบบ",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordPage()));
                        },
                        child: const Text("ลืมรหัสผ่าน"),
                      ),
                      Row(
                        children: [
                          const Text(
                            "ยังไม่มีบัญชีผู้ใช้ ?",
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
                                            const RegisterPage()));
                              },
                              child: const Text(
                                "สมัครสมาชิก",
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
