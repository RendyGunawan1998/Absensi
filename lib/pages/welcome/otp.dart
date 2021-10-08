import 'package:absensi/pages/welcome/verif_identitas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:get/get.dart';

class OTPLoginPage extends StatefulWidget {
  const OTPLoginPage({Key? key}) : super(key: key);

  @override
  _OTPLoginPageState createState() => _OTPLoginPageState();
}

class _OTPLoginPageState extends State<OTPLoginPage> {
  late bool _onEditing = true;
  late String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    "Masukkan 4 digit angka OTP",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      "Periksa kode verifikasi yang kami kirimkan ke nomor 0813******63 sesuai metode yang Anda pilih.",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  //kotak OTP
                  VerificationCode(
                    textStyle:
                        const TextStyle(fontSize: 20.0, color: Colors.black),
                    keyboardType: TextInputType.number,
                    // in case underline color is null it will use primaryColor: Colors.red from Theme
                    underlineColor: Colors.yellow,
                    length: 4,
                    // clearAll is NOT required, you can delete it
                    // takes any widget, so you can implement your design
                    clearAll: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'clear all',
                        style: TextStyle(
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                            color: Colors.black),
                      ),
                    ),
                    onCompleted: (String value) {
                      setState(() {
                        _code = value;
                      });
                    },
                    onEditing: (bool value) {
                      setState(() {
                        _onEditing = value;
                      });
                      if (!_onEditing) FocusScope.of(context).unfocus();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "58 detik",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text(
                      "Kirim Ulang",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
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
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(() => const VerifikasiIdentitasPage());
                        },
                        child: const Text(
                          "Verfikasi",
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
