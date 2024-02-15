import 'package:flutter/material.dart';
import 'package:kuse/profiles/request_form/work_form.dart';

class WorkinformationPage extends StatelessWidget {
  const WorkinformationPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _work_info(context),
          ],
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
      Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 160,
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
                "ข้อมูลการทำงาน",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset("assets/img/icons/jobs.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("ตำแหน่งงาน: Developer"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset("assets/img/icons/office-building.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("สถานที่ทำงาน: บริษัท ออกแบบเก่ง จำกัด"),
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
    ],
  );
}
