import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuse/botton_navigationbar/navigator_page.dart';
import 'package:kuse/register/education_info.dart';
import 'package:kuse/screen/home.dart';

class WorkInfoPage extends StatefulWidget {
  const WorkInfoPage({super.key});

  @override
  State<WorkInfoPage> createState() => _WorkInfoPageState();
}

class _WorkInfoPageState extends State<WorkInfoPage> {
  bool isChecked = false;
  bool isUnemployed = false;
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
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                      "ตำแหน่งงานปัจจุบัน: ",
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
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value ?? false;
                            isUnemployed = false;
                          });
                        },
                      ),
                      const Text(
                        "ข้อมูลฝ่ายงานบริหาร",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        fillColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color.fromARGB(255, 143, 10, 0);
                          }
                          return Colors.transparent;
                        }),
                        value: isUnemployed,
                        onChanged: (bool? value) {
                          setState(() {
                            isUnemployed = value ?? false;
                            isChecked = false;
                          });
                        },
                      ),
                      const Text(
                        "ว่างงาน",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                  if (isChecked)
                    Column(
                      children: [
                        const SizedBox(height: 5),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "ตำแหน่งงานในฝ่ายบริหาร: ",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                height: 60,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'ระบุตำแหน่งงานของคุณ',
                                    hintStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 180, 12, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
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
                              const Text(
                                "ฝ่ายงาน: ",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                height: 60,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText:
                                        'ระบุฝ่ายงานของคุณ เช่น ฝ่ายบริหาร ฝ่ายกิจการนิสิต เป็นต้น',
                                    hintStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 180, 12, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
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
                              const Text(
                                "บริษัท/หน่วยงาน: ",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              SizedBox(
                                height: 60,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'ระบุบริษัทหรือหน่วยงาน',
                                    hintStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w100,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                        color: Color.fromARGB(255, 180, 12, 0),
                                      ),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
            ],
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
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WorkInfoPage()));
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
