import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuse/register/education_info.dart';

class WorkInfoPage extends StatelessWidget {
  const WorkInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "ข้อมูลการทำงาน",
        style: TextStyle(
          fontSize: 18,
        ),
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
                "ข้อมูลการทำงาน",
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
                      "ตำแหน่งงานปัจจุบัน: ",
                      style: GoogleFonts.mitr(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    // SizedBox(
                    //   height: 60,
                    //   child: DropdownButtonFormField<int>(
                    //     decoration: InputDecoration(
                    //       hintText: 'เลือกปี',
                    //       hintStyle: const TextStyle(
                    //           fontWeight: FontWeight.w400,
                    //           color: Colors.black26),
                    //       border: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(15),
                    //       ),
                    //     ),
                    //     items: List.generate(
                    //       21,
                    //       (index) => DropdownMenuItem<int>(
                    //         value: DateTime.now().year - index,
                    //         child: Text(
                    //             '${DateTime.now().year - index + 543}'), // ปี พ.ศ.
                    //       ),
                    //     ),
                    //     onChanged: (value) {},
                    //   ),
                    // ),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'ระบุตำแหน่งงานปัจจุบันของคุณ',
                          hintStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w100),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
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
                      "สถานที่ทำงาน: ",
                      style: GoogleFonts.mitr(
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 60,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'ระบุสถานที่ทำงานของคุณ',
                          hintStyle: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w100),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
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
              //         hintText: 'อีเมล',
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
                          builder: (context) => const EducationPage()));
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
