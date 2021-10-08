
// import 'package:absensi/pages/notification/notification.dart';
// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

// class TabBarPage extends StatefulWidget {
//   const TabBarPage({Key? key}) : super(key: key);

//   @override
//   _TabBarPageState createState() => _TabBarPageState();
// }

// class _TabBarPageState extends State<TabBarPage> {
//   int _currentIndex = 0;
//   List<Widget> tabs = <Widget>[
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: tabs.elementAt(_currentIndex),
//       bottomNavigationBar: _buildBottomBar(),
//     );
//   }

//   Widget _buildBottomBar() {
//     return Container(
//       child: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
//           child: GNav(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             activeColor: Colors.blue,
//             rippleColor: Colors.blue,
//             hoverColor: Colors.transparent,
//             gap: 8,
//             duration: Duration(milliseconds: 10),
//             padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//             tabBackgroundColor: Colors.transparent,
//             tabs: const [
//               GButton(
//                 icon: Icons.book_online,
//                 // text: "Absensi",
//               ),
//               GButton(
//                 icon: Icons.checklist_sharp,
//                 // text: "Pengajuan",
//               ),
//               GButton(
//                 icon: Icons.notification_important,
//                 // text: 'Notif',
//               ),
//               GButton(
//                 icon: Icons.account_circle,
//                 // text: 'profile',
//               ),
//             ],
//             onTabChange: (index) {
//               setState(() {
//                 _currentIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
