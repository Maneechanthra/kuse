import 'package:flutter/material.dart';
import 'package:kuse/profiles/request_form/education_form.dart';
import 'package:kuse/profiles/request_form/work_form.dart';

class EducationInfomationPage extends StatelessWidget {
  const EducationInfomationPage({super.key});

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
        height: 185,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              const Text(
                "ข้อมูลการศึกษา",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Color.fromARGB(255, 241, 107, 98),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text("ปีที่จบการศึกษา: 2565"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset("assets/img/icons/hierarchy.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("ภาควิชา: วิทยาคอมพิวเตอร์และสารสนเทศ"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset("assets/img/icons/education.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("หลักสูตร: วิทยาคอมพิวเตอร์"),
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
