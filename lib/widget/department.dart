import 'package:flutter/material.dart';
import 'package:kuse/model/department_model.dart';

class DepartmentPage extends StatelessWidget {
  const DepartmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ภาควิชา",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: ListView.builder(
          itemCount: all_department.length,
          itemBuilder: (BuildContext context, int index) {
            Department item = all_department[index];
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
                              Text(
                                item.name_thai,
                                style: const TextStyle(),
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
                index == all_department.length ? const Divider() : Container(),
              ],
            );
          },
        ),
      ),
    );
  }
}
