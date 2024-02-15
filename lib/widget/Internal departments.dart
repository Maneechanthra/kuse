import 'package:flutter/material.dart';
import 'package:kuse/model/internal_department_info.dart';

class InternalDepartmentPage extends StatefulWidget {
  const InternalDepartmentPage({super.key});

  @override
  State<InternalDepartmentPage> createState() => _InternalDepartmentPageState();
}

class _InternalDepartmentPageState extends State<InternalDepartmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "หน่วยงานภายใน",
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: _internalDepartment(),
    );
  }
}

Widget _internalDepartment() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: ListView.builder(
      itemCount: getInternalDepartments.length,
      itemBuilder: (BuildContext context, int index) {
        InternalDepartment item = getInternalDepartments[index];
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
                            item.name,
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
            index == getInternalDepartments.length
                ? const Divider()
                : Container(),
          ],
        );
      },
    ),
  );
}
