import 'package:absensi/pages/welcome/otp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class VerifikasiLoginPage extends StatefulWidget {
  const VerifikasiLoginPage({Key? key}) : super(key: key);

  @override
  _VerifikasiLoginPageState createState() => _VerifikasiLoginPageState();
}

class _VerifikasiLoginPageState extends State<VerifikasiLoginPage> {
  bool sms = false;
  bool wa = false;
  bool status = false;
  bool disablesms = false;
  bool disablewa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_fisrt.jpg"),
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 70,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: MaterialButton(
                      onPressed: () {
                        Get.back();
                      },
                      color: Colors.white,
                      textColor: Colors.blue,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 20,
                      ),
                      padding: const EdgeInsets.all(8),
                      shape: const CircleBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Pilih Metode Verifikasi",
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Text(
                      "Pilih salah satu metode dibawah ini untuk mengirim kode verifikasi (OTP).",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: disablesms == true
                        ? null
                        : () {
                            setState(() {
                              sms = !sms;
                              status = !status;
                              disablewa = !disablewa;
                            });
                            print("pressed sms");
                          },
                    child: Container(
                      height: 50,
                      width: Get.width * 0.85,
                      decoration: BoxDecoration(
                          color: sms == true ? Colors.yellow : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.mail,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "Sms ke 0812*****983",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
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
                    onTap: disablewa == true
                        ? null
                        : () {
                            setState(() {
                              wa = !wa;
                              status = !status;
                              disablesms = !disablesms;
                            });
                            print("pressed wa");
                          },
                    child: Container(
                      height: 50,
                      width: Get.width * 0.85,
                      decoration: BoxDecoration(
                          color: wa == true ? Colors.yellow : Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(
                              Icons.whatshot,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              "Whatsapp ke 0812*****983",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(120, 15, 120, 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: status == true ? Colors.yellow : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(() => const OTPLoginPage());
                        },
                        child: const Text(
                          "Lanjut",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
