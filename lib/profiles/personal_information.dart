import 'package:flutter/material.dart';
import 'package:kuse/profiles/request_form/personal_form.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ข้อมูลส่วนตัว",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _personal_info(context),
          ],
        ),
      ),
    );
  }
}

Widget _personal_info(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 5,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 130,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 231, 231, 231),
              blurRadius: 10,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Text(
                "ข้อมูลส่วนตัว",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Divider(),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 5,
                  ),
                  Text("สุเมธ มณีจันทรา"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(Icons.email),
                  SizedBox(
                    width: 5,
                  ),
                  Text("sumet.ma@ku.th"),
                ],
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const PersonalFormPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 2, 36, 109)),
          child: const Center(
            child: Text(
              "แก้ไขข้อมูลส่วนตัว",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    ],
  );
}
