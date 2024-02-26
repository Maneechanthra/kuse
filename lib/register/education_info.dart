import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuse/model/course.dart';

import 'package:kuse/model/department_model.dart';
import 'package:kuse/register/work_info.dart';

class EducationPage extends StatefulWidget {
  const EducationPage({super.key});

  @override
  State<EducationPage> createState() => _EducationPageState();
}

class _EducationPageState extends State<EducationPage> {
  final _educationRegisterForm = GlobalKey<FormState>();
  int? GaduationyearController;

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _educationRegisterForm,
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
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                        child: DropdownButtonFormField<int>(
                          value: GaduationyearController,
                          validator: (GaduationyearController) {
                            if (GaduationyearController == null) {
                              return "กรุณาเลือกภาควิชา";
                            }
                            return null;
                          },
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
                            30,
                            (index) => DropdownMenuItem<int>(
                              value: DateTime.now().year - index,
                              child:
                                  Text('${DateTime.now().year - index + 543}'),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              GaduationyearController = value;
                              print(GaduationyearController);
                            });
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
                        "ภาควิชา: ",
                        style: GoogleFonts.mitr(
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
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
                          validator: (selectedDepartment) {
                            if (selectedDepartment == null) {
                              return "กรุณาเลือกภาควิชา";
                            }
                            return null;
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
                          validator: (selectedCourse) {
                            if (selectedCourse == null) {
                              return "กรุณาเลือกหลักสูตร";
                            } else {
                              null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
      persistentFooterButtons: [
        Container(
          height: 90,
          child: ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  if (_educationRegisterForm.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WorkInfoPage()));
                  } else {
                    print("กรอกข้อมูลไม่ถูกต้อง");
                  }
                },
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 109, 8, 0),
                  ),
                  child: const Center(
                    child: Text(
                      "ถัดไป",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
