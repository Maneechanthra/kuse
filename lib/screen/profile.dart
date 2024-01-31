import 'package:flutter/material.dart';
import 'package:kuse/model/category.dart';
import 'package:kuse/widget/personal_information.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                _category(context),
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
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: 150,
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
