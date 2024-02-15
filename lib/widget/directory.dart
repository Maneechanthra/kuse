import 'package:flutter/material.dart';
import 'package:kuse/widget/Internal%20departments.dart';
import 'package:kuse/widget/courses_info.dart';
import 'package:kuse/widget/department.dart';
import 'package:url_launcher/url_launcher.dart';

class DirectoryPage extends StatelessWidget {
  const DirectoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ติดต่อเรา",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 20,
                  )
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: SizedBox(
                            width: 50,
                            child: Image.asset("assets/img/logo/kuse_1.png"),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Column(
                          children: [
                            SizedBox(
                              width: 230,
                              child: Text(
                                "คณะวิทยาศาสตร์และวิศวกรรมศาสตร์",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 230,
                              child: Text(
                                "มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร เลขที่ 59/5 หมู่ 1 ถนน วปรอ. 366 ตำบลเชียงเครือ อำเภอเมือง จังหวัดสกลนคร รหัสไปรษณีย์ 47000",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w200),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 230,
                              child: Text(
                                "โทรศัพท์เคลื่อนที่ 08-1739-1541\nโทรสาร 042-725-034",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DepartmentPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 155, 0, 0),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ภาควิชา",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
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
            const Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CoursePage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 155, 0, 0),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "หลักสูตร",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
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
            const Divider(),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const InternalDepartmentPage()));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 155, 0, 0),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "หน่วยงาน",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
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
            const Divider(),
            InkWell(
              onTap: () {
                launch(
                    'https://script.google.com/macros/s/AKfycbzqkyJyt9QhvnsrDKF3iXxN__NGQCNkDy0fq9Muhn4o_FHAcJVf/exec');
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 155, 0, 0),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "สายตรงคณบดี",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
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
            const Divider(),
          ],
        ),
      ),
    );
  }
}
