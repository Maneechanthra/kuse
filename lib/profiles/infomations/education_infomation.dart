import 'package:flutter/material.dart';
import 'package:kuse/profiles/request_form/education_form.dart';

class EducationInfomationPage extends StatelessWidget {
  const EducationInfomationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ข้อมูลการศึกษา",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _education_info(context),
          ],
        ),
      ),
    );
  }
}

Widget _education_info(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 5,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 240,
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
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ปีที่จบการศึกษา:",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "2566",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 156, 0, 0),
                ),
              ),
              Divider(),
              Text(
                "ภาควิชา:",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "วิทยาการคอมพิวเตอร์และสารสนเทศ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 156, 0, 0),
                ),
              ),
              Divider(),
              Text(
                "หลักสูตร:",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "วิทยาการคอมพิวเตอร์",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 156, 0, 0),
                ),
              ),
              Divider(),
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
                  builder: (context) => const EducationFormPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 2, 36, 109)),
          child: const Center(
            child: Text(
              "แก้ไขข้อมูลการศึกษา",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    ],
  );
}
