import 'package:absensi/pages/input_widget/input_widget.dart';
import 'package:absensi/pages/welcome/otp.dart';
import 'package:absensi/pages/welcome/verif_identitas2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

class VerifikasiIdentitasPage extends StatefulWidget {
  const VerifikasiIdentitasPage({Key? key}) : super(key: key);

  @override
  _VerifikasiIdentitasPageState createState() =>
      _VerifikasiIdentitasPageState();
}

class _VerifikasiIdentitasPageState extends State<VerifikasiIdentitasPage> {
  TextEditingController nama = TextEditingController();
  TextEditingController tmptLahir = TextEditingController();
  TextEditingController tglLahir = TextEditingController();
  TextEditingController jenisKelamin = TextEditingController();
  TextEditingController alamatTmptTinggal = TextEditingController();
  TextEditingController kota = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController lokasiKerja = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController rePass = TextEditingController();
  final formkey = new GlobalKey<FormState>();

  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

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
              endIndent: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            _dataDiri(context),
            const SizedBox(
              height: 30,
            ),
            _lokasiKerja(context),
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
                  Get.to(() => const VerifikasiIdentitas2Page());
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
          "Data Identitas",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        )
      ],
    );
  }

  Widget _dataDiri(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      width: Get.width * 0.9,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Nama Lengkap Sesuai KTP",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputWidget(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Masukkan Nama",
                        border: OutlineInputBorder()),
                    controller: nama,
                    onSaved: (value) {
                      nama.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: const [
                    Expanded(
                      flex: 5,
                      child: Text(
                        "Tempat Lahir",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Text(
                        "Tanggal Lahir",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: InputWidget(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Nama Kota",
                              border: OutlineInputBorder()),
                          controller: tmptLahir,
                          onSaved: (value) {
                            tmptLahir.text = value!;
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: InputWidget(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "DD/MM/YYYY",
                              border: OutlineInputBorder()),
                          keyboardType: TextInputType.number,
                          controller: tglLahir,
                          onSaved: (value) {
                            tglLahir.text = value!;
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Jenis Kelamin",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Radio(
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Laki-Laki';
                          id = 1;
                        });
                      },
                    ),
                    const Text(
                      'Laki-Laki',
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Perempuan';
                          id = 2;
                        });
                      },
                    ),
                    const Text(
                      'Perempuan',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Alamat Tempat Tinggal",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                InputWidget(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Masukkan Alamat",
                        border: OutlineInputBorder()),
                    controller: alamatTmptTinggal,
                    maxLines: 7,
                    onSaved: (value) {
                      alamatTmptTinggal.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Kota / Kabupaten",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                InputWidget(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Pilih", border: OutlineInputBorder()),
                    controller: kota,
                    maxLines: 7,
                    onSaved: (value) {
                      kota.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                InputWidget(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Masukkan Email",
                        border: OutlineInputBorder()),
                    controller: email,
                    maxLines: 7,
                    onSaved: (value) {
                      email.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _lokasiKerja(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      width: Get.width * 0.9,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Masukkan Lokasi Kerja Sesuai Lisensi",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                InputWidget(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Masukkan Lokasi Kerja",
                        border: OutlineInputBorder()),
                    controller: lokasiKerja,
                    onSaved: (value) {
                      lokasiKerja.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "opsional, lewati jika Anda belum mempunyainya",
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
