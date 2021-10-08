import 'package:absensi/pages/welcome/verifikasi.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class DaftarBaruPage extends StatefulWidget {
  const DaftarBaruPage({Key? key}) : super(key: key);

  @override
  _DaftarBaruPageState createState() => _DaftarBaruPageState();
}

class _DaftarBaruPageState extends State<DaftarBaruPage> {
  late TextEditingController nomorHp;
  String _country = "JAV";

  bool pekerja = false;
  bool pemberi = false;
  bool status = false;
  bool disablepekerja = false;
  bool disablepemberi = false;

  @override
  void initState() {
    super.initState();
    nomorHp = TextEditingController();
  }

  @override
  void dispose() {
    nomorHp.dispose();
    super.dispose();
  }

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
                        size: 24,
                      ),
                      padding: const EdgeInsets.all(8),
                      shape: const CircleBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Daftar Baru Sebagai",
                    style: TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Pilih salah satu:",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: disablepekerja == true
                                ? null
                                : () {
                                    setState(() {
                                      pekerja = !pekerja;
                                      status = !status;
                                      disablepemberi = !disablepemberi;
                                    });
                                    // Get.back();
                                  },
                            color: Colors.white,
                            textColor: Colors.blue,
                            child: Icon(
                              Icons.arrow_back,
                              size: pekerja == true ? 75 : 55,
                            ),
                            padding: const EdgeInsets.all(16),
                            shape: const CircleBorder(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Pekerja",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          MaterialButton(
                            onPressed: disablepemberi == true
                                ? null
                                : () {
                                    setState(() {
                                      pemberi = !pemberi;
                                      status = !status;
                                      disablepekerja = !disablepekerja;
                                    });
                                    // Get.back();
                                  },
                            color: Colors.white,
                            textColor: Colors.blue,
                            child: Icon(
                              Icons.arrow_back,
                              size: pemberi == true ? 75 : 55,
                              semanticLabel: "Icon",
                            ),
                            padding: const EdgeInsets.all(16),
                            shape: const CircleBorder(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Pemberi Kerja",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Masukkan nomor ponsel Anda untuk diproses",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: Get.width * 0.75,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      iconEnabledColor: Colors.black,
                      value: _country,
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? newValue) {
                        setState(() {
                          _country = newValue!;
                        });
                      },
                      items: <String>['Indonesia', 'Latin', 'JAV', 'HongKong']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: Get.width * 0.75,
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        const Text(
                          "+62",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        const VerticalDivider(
                          indent: 9,
                          endIndent: 9,
                          thickness: 0.6,
                          color: Colors.black54,
                        ),
                        Expanded(
                          // flex: 7,
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: "81234567890",
                                border: InputBorder.none),
                            controller: nomorHp,
                            keyboardType: TextInputType.number,
                            onChanged: (value) {
                              nomorHp.text = value;
                            },
                            onSaved: (value) {
                              nomorHp.text = value!;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(120, 15, 120, 15),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: status == true
                            ? Colors.yellow[600]
                            : Colors.grey[400],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(() => const VerifikasiLoginPage());
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
