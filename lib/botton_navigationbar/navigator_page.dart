import 'package:flutter/material.dart';
import 'package:kuse/screen/home.dart';
import 'package:kuse/screen/more.dart';
import 'package:kuse/screen/profile.dart';
import 'package:kuse/screen/setting.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({super.key});

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  int myCurrentIndex = 0;
  List Page = [
    HomePage(),
    ProfilePage(),
    MorePage(),
    SettingPage(),
  ];
  bool showHomeIcon = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Page[myCurrentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 8,
                  color: Color.fromARGB(255, 226, 226, 226),
                )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              selectedItemColor: const Color.fromARGB(255, 0, 141, 122),
              unselectedItemColor: Colors.black,
              selectedFontSize: 12,
              currentIndex: myCurrentIndex,
              onTap: (index) {
                setState(() {
                  myCurrentIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 20,
                    child: myCurrentIndex == 0
                        ? Image.asset("assets/img/icons/home_active.png")
                        : Image.asset("assets/img/icons/home.png"),
                  ),
                  label: 'หน้าแรก',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 20,
                    child: myCurrentIndex == 1
                        ? Image.asset("assets/img/icons/profile_active.png")
                        : Image.asset("assets/img/icons/profile.png"),
                  ),
                  label: 'โปรไฟล์',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 20,
                    child: myCurrentIndex == 2
                        ? Image.asset("assets/img/icons/more_active.png")
                        : Image.asset("assets/img/icons/more.png"),
                  ),
                  label: 'เพิ่มเติม',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 20,
                    child: myCurrentIndex == 3
                        ? Image.asset("assets/img/icons/setting_active.png")
                        : Image.asset("assets/img/icons/setting.png"),
                  ),
                  label: 'ตั้งค่า',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
