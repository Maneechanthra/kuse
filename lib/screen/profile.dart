import 'package:flutter/material.dart';
import 'package:kuse/model/category.dart';
import 'package:kuse/profiles/infomations/education_infomation.dart';
import 'package:kuse/profiles/infomations/personal_information.dart';
import 'package:kuse/profiles/infomations/work_infomation.dart';
import 'package:kuse/profiles/request_form/personal_form.dart';
import 'package:kuse/widget/menu_profile.dart';

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
      backgroundColor: Colors.white,
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
                const SizedBox(height: 200),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCurrentStudent = !isCurrentStudent;
                    });
                  },
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green[800],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        isCurrentStudent
                            ? 'แสดงนิสิตปัจจุบัน'
                            : 'แสดงนิสิตเก่า',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
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
  var height = MediaQuery.of(context).size.height,
      width = MediaQuery.of(context).size.width;
  return GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    children: List.generate(
      all_categories.length,
      (index) {
        Categories cate = all_categories[index];
        return GestureDetector(
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
                      builder: (context) => const EducationInfomationPage()));
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
            height: MediaQuery.of(context).size.height * 0.18,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 255, 255, 255),
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
                  width: width * 0.2,
                  child: Image.asset(cate.icon),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cate.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
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
        child: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ชื่อ-นามสกุล:",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "นายสุเมธ มณีจันทรา",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 156, 0, 0),
                ),
              ),
              Divider(),
              Text(
                "ภาควิชา:",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "วิทยาการคอมพิวเตอร์และสารสนเทศ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 156, 0, 0),
                ),
              ),
              Divider(),
              Text(
                "หลักสูตร:",
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "วิทยาการคอมพิวเตอร์",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 156, 0, 0),
                ),
              ),
              Divider(),
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
