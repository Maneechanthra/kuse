import 'package:flutter/material.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:kuse/model/webviews.dart';
import 'package:kuse/widget/directory.dart';
import 'package:kuse/widget/notifications.dart';
// import 'package:kuse/widget/WebViewScreen.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final WebViewController controller;

  // void initState() {
  //   super.initState();
  //   controller = WebViewController()
  //     ..loadRequest(Uri.parse("https://google.com"));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Image.asset(
                          "assets/img/logo/kuse_1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "สวัสดีคุณสุเมธ มณีจันทรา",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "นิสิตภาควิชาวิทยาการคอมพิวเตอร์และสารสนเทศ",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(255, 168, 168, 168),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationsPage()));
                        },
                        icon: const Icon(Icons.notifications),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "คณะวิทยาศาสตร์และวิศวกรรมศาสตร์",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 117, 8, 0)),
                ),
                const Text(
                  "Faculty of Science and Engineering",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 185, 185, 185)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  width: double.infinity,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: AnotherCarousel(
                      images: const [
                        AssetImage("assets/img/photo/01.jpg"),
                        AssetImage("assets/img/photo/02.jpg"),
                        AssetImage("assets/img/photo/03.jpg"),
                        AssetImage("assets/img/logo/kuse_1.png"),
                        AssetImage("assets/img/photo/04.jpg"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 5,
                ),
                _WebView(context)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget _WebView(BuildContext context) {
//   return ListView.builder(
//     shrinkWrap: true,
//     physics: const NeverScrollableScrollPhysics(),
//     itemCount: 1,
//     itemBuilder: (BuildContext context, int index) {
//       return GestureDetector(
//         onTap: () {
//           // Navigator.push(context,
//           //     MaterialPageRoute(builder: (context) => const WebViewScreen()));
//         },
//         child: Row(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                     image: AssetImage("assets/img/photo/0${index * 2 + 3}.jpg"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Opacity(
//                       opacity: 0.6,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           gradient: LinearGradient(
//                             begin: Alignment.bottomCenter,
//                             stops: const [0.05, 0.5],
//                             colors: [
//                               Colors.black.withOpacity(.6),
//                               Colors.black.withOpacity(.1),
//                             ],
//                           ),
//                         ),
//                         height: 120,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 5,
//                       left: 10,
//                       child: SizedBox(
//                         width: 130,
//                         child: Text(
//                           index == 0 ? 'ข้อมูลคณะ' : 'บุคลากรคณะ',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w300,
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(width: 5),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   image: DecorationImage(
//                     image: AssetImage(
//                         "assets/img/photo/0${index * 2 + 4}.jpg"), // กำหนดภาพตามลำดับ index
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Stack(
//                   children: [
//                     Opacity(
//                       opacity: 0.6,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           gradient: LinearGradient(
//                             begin: Alignment.bottomCenter,
//                             stops: [0.05, 0.5],
//                             colors: [
//                               Colors.black.withOpacity(.6),
//                               Colors.black.withOpacity(.1),
//                             ],
//                           ),
//                         ),
//                         height: 120,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 5,
//                       left: 10,
//                       child: SizedBox(
//                         width: 130,
//                         child: Text(
//                           index == 0 ? 'บุคลากรคณะ' : 'ข้อมูลคณะ',
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.w300,
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                           maxLines: 1,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
// }

Widget _WebView(BuildContext context) {
  return GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    children: List.generate(
      all_webviews.length,
      (index) {
        webviews web = all_webviews[index];
        return GestureDetector(
          onTap: () {
            if (web.id == 1) {
              launch('https://kuse.csc.ku.ac.th/departments-information');
            }
            if (web.id == 2) {
              launch('https://kuse.csc.ku.ac.th/all-staff');
            }
            if (web.id == 3) {
              launch('https://kuse.csc.ku.ac.th/community-zone');
            }
            if (web.id == 4) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DirectoryPage(),
                ),
              );
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(web.img),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        stops: [0.05, 0.5],
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.black.withOpacity(0.1),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 5,
                  left: 10,
                  child: SizedBox(
                    width: 130,
                    child: Text(
                      web.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
