import 'package:absensi/pages/welcome/daftar_baru.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GonakerMobilePage extends StatefulWidget {
  const GonakerMobilePage({Key? key}) : super(key: key);

  @override
  _GonakerMobilePageState createState() => _GonakerMobilePageState();
}

class _GonakerMobilePageState extends State<GonakerMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_fisrt.jpg"),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 90,
                ),
                const Icon(
                  Icons.add_box,
                  size: 100,
                ),
                const SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed pekerja");
                  },
                  child: Container(
                    height: 50,
                    width: Get.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Row(
                        children: const [
                          Icon(Icons.person, color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pekerja",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed pemberi");
                  },
                  child: Container(
                    height: 50,
                    width: Get.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Row(
                        children: const [
                          Icon(Icons.person, color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Pemberi Kerja",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    print("pressed info");
                  },
                  child: Container(
                    height: 50,
                    width: Get.width * 0.85,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
                      child: Row(
                        children: const [
                          Icon(Icons.person, color: Colors.white),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Info GONAKER",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: const <Widget>[
                    Expanded(
                        child: Divider(
                      color: Colors.white,
                      endIndent: 12,
                      thickness: 2,
                    )),
                    Text(
                      "Atau",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      color: Colors.white,
                      indent: 12,
                      thickness: 2,
                    )),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => const DaftarBaruPage());
                  },
                  child: Container(
                    height: 50,
                    width: Get.width * 0.65,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Daftar Baru",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
