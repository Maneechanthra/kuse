import 'package:flutter/material.dart';
import 'package:kuse/model/%E0%B8%B7notify_info.dart';
import 'package:kuse/widget/webview_page.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        "แจ้งเตือน",
        style: TextStyle(
          fontSize: 16,
        ),
      )),
      body: _Notifications(context),
    );
  }
}

Widget _Notifications(BuildContext context) {
  return ListView.builder(
      itemCount: getNotifications.length,
      itemBuilder: (BuildContext context, index) {
        Notifications item = getNotifications[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WebviewPage()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 1.0,
              height: 80,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(99, 219, 219, 219),
                      offset: Offset(0, 10),
                      blurRadius: 10,
                    ),
                  ]),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.notifications_active,
                      size: 30,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: 250,
                          child: Text(
                            item.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 250,
                          child: Text(
                            item.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      });
}
