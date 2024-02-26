import 'package:flutter/material.dart';
import 'package:kuse/model/users.dart';
import 'package:kuse/model/work_model.dart';
import 'package:kuse/profiles/request_form/education_form.dart';
import 'package:kuse/profiles/request_form/work_form.dart';
import 'package:kuse/register/work_info.dart';

class WorkinformationPage extends StatefulWidget {
  const WorkinformationPage({super.key});

  @override
  State<WorkinformationPage> createState() => _WorkinformationPageState();
}

class _WorkinformationPageState extends State<WorkinformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ข้อมูลการทำงาน",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _work_info(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _work_info(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 5,
      ),
      ListView.builder(
        itemCount: getWork.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, index) {
          Work item = getWork[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Container(
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ตำแหน่งงาน:",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${item.jop_position}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 156, 0, 0),
                      ),
                    ),
                    const Divider(),
                    const Text(
                      "บริษัท/หน่วยงาน:",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${item.company}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 156, 0, 0),
                      ),
                    ),
                    const Divider(),
                    const Text(
                      "ช่วงปีการทำงาน:",
                      style: TextStyle(fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${item.years_start} - ${item.years_end}",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 156, 0, 0),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      const SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WorkInfoPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color.fromARGB(255, 11, 138, 0)),
          child: const Center(
            child: Text(
              "เพิ่มข้อมูลการทำงาน",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const WorkFormPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 2, 36, 109)),
          child: const Center(
            child: Text(
              "แก้ไขข้อมูลการทำงาน",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
