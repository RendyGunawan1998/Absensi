import 'package:absensi/pages/input_widget/input_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class VerifikasiIdentitas3Page extends StatefulWidget {
  const VerifikasiIdentitas3Page({Key? key}) : super(key: key);

  @override
  _VerifikasiIdentitas3PageState createState() =>
      _VerifikasiIdentitas3PageState();
}

class _VerifikasiIdentitas3PageState extends State<VerifikasiIdentitas3Page> {
  TextEditingController searchJamKerja = TextEditingController();
  TextEditingController searchJabatan = TextEditingController();
  TextEditingController upah = TextEditingController();
  TextEditingController pemilikRekening = TextEditingController();
  TextEditingController nomorRekening = TextEditingController();

  final formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      height: Get.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background_fisrt.jpg"),
            fit: BoxFit.cover),
      ),
      child: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            _buttonBack(context),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              decoration: BoxDecoration(
                color: Colors.yellow[600],
                borderRadius: BorderRadius.circular(10),
              ),
              child: MaterialButton(
                onPressed: () {
                  Get.to(() => const VerifikasiIdentitas3Page());
                },
                child: const Text(
                  "Daftar",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonBack(BuildContext context) {
    return Row(
      children: [
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
        const Text(
          "Foto KTP & Foto Diri",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
