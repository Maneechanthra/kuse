import 'package:flutter/material.dart';
import 'package:kuse/botton_navigationbar/navigator_page.dart';

class LoginNisitPage extends StatefulWidget {
  const LoginNisitPage({super.key});

  @override
  State<LoginNisitPage> createState() => _LoginNisitPageState();
}

class _LoginNisitPageState extends State<LoginNisitPage> {
  final _loginNisitForm = GlobalKey<FormState>();
  final studentIDController = TextEditingController();
  final passwordController = TextEditingController();
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
          child: Form(
            key: _loginNisitForm,
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
                  "เข้าสู่ระบบด้วยบัญชีนนทรี",
                  style: TextStyle(color: Colors.black26),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  // height: 60,
                  child: TextFormField(
                    controller: studentIDController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email),
                        hintText: "username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? "กรุณากรอกบัญชีนนทรี" : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  // height: 60,
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.password_outlined),
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onChanged: (String value) {},
                    validator: (value) {
                      print("object");
                      return value!.isEmpty ? "กรุณากรอกรหัสผ่าน" : null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    if (_loginNisitForm.currentState!.validate()) {
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
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) => _dialogNotification(context));
                    },
                    child: Text("ลืมรหัสผ่าน"),
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

Widget _dialogNotification(BuildContext context) {
  return Dialog(
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "กรุณาติดต่อเจ้าหน้าที่!",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Divider(),
            Text(
              "หากลืมรหัสผ่านกรุณาติดต่อฝ่ายรับเข้า!",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Tel: 086 224 1118",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "email: admission.occ-csc@ku.th",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ),
  );
}
