import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Logins/Login.dart';
import 'package:get/get.dart';

class GetX extends StatelessWidget {
  const GetX({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "snackbar",
      home: Scaffold(
        appBar: AppBar(
            // title: const Text("Snackbar Example"),
            ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //********************************************************************** */
              // Get.snackbar("title", "message",
              //     snackPosition: SnackPosition.BOTTOM,
              //     titleText: const Text("data"),
              //     messageText: const Text("hhhhhhh"),
              //     animationDuration: const Duration(milliseconds: 2000),
              //     backgroundGradient: const LinearGradient(
              //         colors: [Colors.cyanAccent, Colors.black]));
              // BorderRadius.circular(30);
              //********************************************************************** */
              // Get.defaultDialog(
              //   title: "I LOVE FATIMA",
              //   titleStyle: const TextStyle(fontSize: 23),
              //   middleText: "BECAUSE THIS IS MY LOVE",
              //   middleTextStyle: const TextStyle(fontSize: 12),
              //   backgroundColor: Colors.amber,
              //   buttonColor: Colors.blue,
              //   radius: 20,
              //  // barrierDismissible: false,
              //   content: const Row(
              //     children: [
              //       CircularProgressIndicator(),
              //       SizedBox(
              //         width: 10,
              //       ),
              //       Text(
              //         "its loading now",
              //         style: TextStyle(fontSize: 20),
              //       ),
              //     ],
              //   ),
              //   textConfirm: "textConfirm",
              //   confirmTextColor: Colors.blueAccent,
              //   onConfirm: () {},
              //   onCancel: () {
              //     Get.back();
              //   },
              //   textCancel: "textCancel",
              //   cancelTextColor: Colors.black,
              // );
              //************************************************************* */
              // Get.bottomSheet(
              //   const Wrap(
              //     children: <Widget>[
              //       ListTile(
              //         leading: Icon(Icons.light),
              //         title: Text("light mode"),
              //       ),
              //       ListTile(
              //         leading: Icon(Icons.dark_mode),
              //         title: Text("dark mode"),
              //       ),
              //     ],
              //   ),
              //   barrierColor: Colors.black,
              //   backgroundColor: Colors.blue,
              // );
              //************************************************************* */
              Get.to(const Login());
            },
            child: const Text('Show Dialog'),
          ),
        ),
      ),
    );
  }
}
//************************************************************************* */

// import 'package:flutter/material.dart';

// class GetX extends StatelessWidget {
//   const GetX({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child:Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 36, 219, 39),
//           title: const Text("WhatsApp"),
//           actions: [
//             IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
//             IconButton(onPressed: () {}, icon: const Icon(Icons.camera)),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(Icons.density_medium_rounded)),
//           ],
//           bottom: const TabBar(tabs: [
//             Tab(
//               text: "CHATS",
//             ),
//             Tab(
//               text: "STATUS",
//             ),
//             Tab(
//               text: "CALLS",
//             )
//           ]),
//         ),
//         body: const TabBarView(
//           children: [
//             Center(
//               child: Text("CHATS"),
//             ),
//             Center(
//               child: Text("STATUS"),
//             ),
//             Center(
//               child: Text("CALLS"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }