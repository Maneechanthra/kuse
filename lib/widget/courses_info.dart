import 'package:flutter/material.dart';
import 'package:kuse/model/course.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "หลักสูตร",
          style: TextStyle(fontSize: 16),
        ),
      ),
      body: _course(),
    );
  }
}

Widget _course() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 5,
    ),
    child: ListView.builder(
      itemCount: all_courses.length,
      itemBuilder: (BuildContext context, index) {
        Course item = all_courses[index];
        return Column(
          children: [
            const Divider(),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Container(
                      width: 5,
                      height: 30,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 136, 10, 1),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 250,
                            child: Text(
                              item.name,
                              style: const TextStyle(),
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                          )
                        ],
                      ),
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
