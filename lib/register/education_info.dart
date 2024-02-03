import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuse/model/course.dart';

import 'package:kuse/model/department_model.dart';
import 'package:kuse/register/work_info.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "ข้อมูลการศึกษา",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 80,
                child: Image.asset("assets/img/logo/kuse_1.png"),
              ),
              const Text(
                "ข้อมูลการศึกษา",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ปีที่จบการศึกษา: ",
                      style: GoogleFonts.mitr(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 60,
                      child: DropdownButtonFormField<int>(
                        decoration: InputDecoration(
                          hintText: 'เลือกปี',
                          hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black26),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        items: List.generate(
                          21,
                          (index) => DropdownMenuItem<int>(
                            value: DateTime.now().year - index,
                            child: Text(
                                '${DateTime.now().year - index + 543}'), // ปี พ.ศ.
                          ),
                        ),
                        onChanged: (value) {},
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ภาควิชา: ",
                      style: GoogleFonts.mitr(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 60,
                      child: DropdownButtonFormField<Department>(
                        decoration: InputDecoration(
                          hintText: 'เลือกภาควิชา',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        items: all_department.map((department) {
                          return DropdownMenuItem<Department>(
                            value: department,
                            child: SizedBox(
                              width: 250,
                              child: Text(
                                department.name_thai,
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (Department? selectedDepartment) {
                          if (selectedDepartment != null) {
                            print(
                                'Selected Department: ${selectedDepartment.name_thai}');
                            print('Tel: ${selectedDepartment.Tel}');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "หลักสูตร: ",
                      style: GoogleFonts.mitr(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 60,
                      child: DropdownButtonFormField<Course>(
                        decoration: InputDecoration(
                          hintText: 'เลือกหลักสูตร',
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Colors.black26,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        items: all_courses.map((course) {
                          return DropdownMenuItem<Course>(
                            value: course,
                            child: SizedBox(
                              width: 250,
                              child: Text(
                                course.name,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (Course? selectedCourse) {
                          if (selectedCourse != null) {
                            print('Selected Course: ${selectedCourse.name}');
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10.0),
              //   child: SizedBox(
              //     height: 60,
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         hintText: 'รหัสผ่าน',
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(15),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10.0),
              //   child: SizedBox(
              //     height: 60,
              //     child: TextFormField(
              //       decoration: InputDecoration(
              //         hintText: 'ยืนยันรหัสผ่าน',
              //         border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(15),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WorkInfoPage()));
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 109, 8, 0),
                  ),
                  child: const Center(
                    child: Text(
                      "ถัดไป",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
