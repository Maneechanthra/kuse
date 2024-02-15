import 'package:flutter/material.dart';
import 'package:kuse/profiles/request_form/education_form.dart';
import 'package:kuse/profiles/request_form/personal_form.dart';

import '../profiles/request_form/work_form.dart';

class RequiredmenuPage extends StatelessWidget {
  const RequiredmenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "คำร้องขอแก้ไขข้อมูล",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: _menu(context),
    );
  }
}

Widget _menu(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PersonalFormPage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 5,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 136, 10, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "คำร้องขอแก้ไขข้อมูลส่วนตัว",
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EducationFormPage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 5,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 136, 10, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "คำร้องขอแก้ไขข้อมูลการศึกษา",
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WorkFormPage()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 5,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 136, 10, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "คำร้องขอแก้ไขข้อมูลทำงาน",
                        ),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
