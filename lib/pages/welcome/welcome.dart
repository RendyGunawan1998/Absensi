import 'package:absensi/pages/welcome/gonaker_mobile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                  height: 120,
                ),
                const Icon(
                  Icons.add_box,
                  size: 200,
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Selamat Datang",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "GONAKAER",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 160,
                ),
                Container(
                    height: 70,
                    width: Get.width,
                    decoration:
                        BoxDecoration(color: Colors.black.withOpacity(0.3)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(120, 15, 120, 15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Get.offAll(() => const GonakerMobilePage());
                          },
                          child: const Text(
                            "Mulai",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
