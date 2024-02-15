import 'package:flutter/material.dart';

class LoginNisitPage extends StatefulWidget {
  const LoginNisitPage({super.key});

  @override
  State<LoginNisitPage> createState() => _LoginNisitPageState();
}

class _LoginNisitPageState extends State<LoginNisitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "เข้าสู่ระบบนิสิตปัจจุบัน",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  width: 150, child: Image.asset("assets/img/logo/kuse_1.png")),
              const Text(
                "เข้าสู่ระบบ",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "เข้าสู่ระบบด้วยบัญชีนนทรี",
                style: TextStyle(color: Colors.black26),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      hintText: "username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.password_outlined),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 104, 35),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text(
                    "เข้าสู่ระบบ",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
