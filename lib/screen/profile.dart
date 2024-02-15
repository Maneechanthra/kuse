import 'package:flutter/material.dart';
import 'package:kuse/model/category.dart';
import 'package:kuse/profiles/education_infomation.dart';
import 'package:kuse/profiles/request_form/personal_form.dart';
import 'package:kuse/profiles/work_infomation.dart';
import 'package:kuse/widget/menu_profile.dart';
import 'package:kuse/profiles/personal_information.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isCurrentStudent = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const Text(
                  "โปรไฟล์",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const Divider(),
                const SizedBox(
                  height: 15,
                ),
                isCurrentStudent ? _category(context) : _nisit(context),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isCurrentStudent = !isCurrentStudent;
                    });
                  },
                  child: Text(
                      isCurrentStudent ? 'แสดงนิสิตปัจจุบัน' : 'แสดงนิสิตเก่า'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _category(BuildContext context) {
  return GridView.count(
    shrinkWrap: true,
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    children: List.generate(
      all_categories.length,
      (index) {
        Categories cate = all_categories[index];
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                if (cate.id == 1) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalPage()));
                }
                if (cate.id == 2) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WorkinformationPage()));
                }
                if (cate.id == 3) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const EducationInfomationPage()));
                }
                if (cate.id == 4) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RequiredmenuPage()));
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.19,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, .5),
                        blurRadius: 2,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Image.asset(cate.icon),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      cate.title,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
}

Widget _nisit(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 5,
      ),
      Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: 265,
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
                "ข้อมูลส่วนตัว",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 5,
              ),
              const Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  Text("สุเมธ มณีจันทรา"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset("assets/img/icons/mail.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("sumet.ma@ku.th"),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                    child: Image.asset("assets/img/icons/id-card.png"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text("6440204052"),
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
                  builder: (context) => const PersonalFormPage()));
        },
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 2, 36, 109)),
          child: const Center(
            child: Text(
              "แก้ไขข้อมูลส่วนตัว",
              style: TextStyle(
                  fontSize: 16, color: Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    ],
  );
}
