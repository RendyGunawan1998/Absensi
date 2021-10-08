import 'package:absensi/pages/input_widget/input_widget.dart';
import 'package:absensi/pages/welcome/verif_identitas3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class VerifikasiIdentitas2Page extends StatefulWidget {
  const VerifikasiIdentitas2Page({Key? key}) : super(key: key);

  @override
  _VerifikasiIdentitas2PageState createState() =>
      _VerifikasiIdentitas2PageState();
}

class _VerifikasiIdentitas2PageState extends State<VerifikasiIdentitas2Page> {
  TextEditingController searchJamKerja = TextEditingController();
  TextEditingController searchJabatan = TextEditingController();
  TextEditingController upah = TextEditingController();
  TextEditingController pemilikRekening = TextEditingController();
  TextEditingController nomorRekening = TextEditingController();

  final formkey = new GlobalKey<FormState>();

  bool kontrak = false;
  bool bulanan = false;
  bool mingguan = false;
  bool harian = false;
  bool jam = false;
  bool disablekontrak = false;
  bool disablebulanan = false;
  bool disablemingguan = false;
  bool disableharian = false;
  bool disablejam = false;

  List jadwal = ['Reguler 1', 'Reguler 2', '3 Grup - Shift 1'];
  List jabatan = [
    'HRD',
    'Manager',
    'Super Visor',
    'Cleaning Service',
    'Admin',
    'Office',
    'Security'
  ];
  List bank = [
    'BRI',
    'BNI',
    'BCA',
    'Mandiri',
  ];

  late String _bank = "BRI";
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
              endIndent: 130,
            ),
            const SizedBox(
              height: 20,
            ),
            _sistemKerja(context),
            const SizedBox(
              height: 10,
            ),
            _jabatan(context),
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

  Widget _sistemKerja(BuildContext context) {
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
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pilih Sistem Kerja",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 38,
                      width: Get.width * 0.25,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                          color: kontrak == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        child: const Text(
                          "Kontrak",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: disablekontrak == true
                            ? null
                            : () {
                                setState(() {
                                  kontrak = !kontrak;

                                  disablebulanan = !disablebulanan;
                                  disablemingguan = !disablemingguan;
                                  disableharian = !disableharian;
                                  disablejam = !disablejam;
                                });
                                // Get.back();
                              },
                      ),
                    ),
                    Container(
                      height: 38,
                      width: Get.width * 0.25,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                          color: bulanan == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        child: const Text(
                          "Bulanan",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: disablebulanan == true
                            ? null
                            : () {
                                setState(() {
                                  bulanan = !bulanan;

                                  disablekontrak = !disablekontrak;
                                  disablemingguan = !disablemingguan;
                                  disableharian = !disableharian;
                                  disablejam = !disablejam;
                                });
                                // Get.back();
                              },
                      ),
                    ),
                    Container(
                      height: 38,
                      width: Get.width * 0.25,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                          color: mingguan == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        child: const Text(
                          "Mingguan",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: disablemingguan == true
                            ? null
                            : () {
                                setState(() {
                                  mingguan = !mingguan;

                                  disablekontrak = !disablekontrak;
                                  disablebulanan = !disablebulanan;
                                  disableharian = !disableharian;
                                  disablejam = !disablejam;
                                });
                                // Get.back();
                              },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 38,
                      width: Get.width * 0.25,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                          color: harian == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        child: const Text(
                          "Harian",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: disableharian == true
                            ? null
                            : () {
                                setState(() {
                                  harian = !harian;

                                  disablekontrak = !disablekontrak;
                                  disablebulanan = !disablebulanan;
                                  disablemingguan = !disablemingguan;
                                  disablejam = !disablejam;
                                });
                                // Get.back();
                              },
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 38,
                      width: Get.width * 0.25,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.black.withOpacity(0.3)),
                          color: jam == true ? Colors.blue : Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: TextButton(
                        child: const Text(
                          "Per Jam",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: disablejam == true
                            ? null
                            : () {
                                setState(() {
                                  jam = !jam;

                                  disablekontrak = !disablekontrak;
                                  disablebulanan = !disablebulanan;
                                  disablemingguan = !disablemingguan;
                                  disableharian = !disableharian;
                                });
                                // Get.back();
                              },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Jam Kerja",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.15)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: const Text(
                      "Pilih",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[300],
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  ListTile(
                                    title: const Padding(
                                      padding: EdgeInsets.fromLTRB(50, 5, 0, 5),
                                      child: Text(
                                        "Jam Kerja",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 5, 40, 5),
                                    child: Theme(
                                      data: ThemeData(
                                        primaryColor: Colors.teal[200],
                                        primaryColorDark: Colors.tealAccent,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                searchJamKerja.clear();
                                              });
                                            },
                                            icon: const Icon(Icons.search),
                                          ),
                                          hintText: "Cari Jam  Kerja",
                                        ),
                                        onChanged: (value) {
                                          if (value.length > 9) {
                                            setState(() {
                                              null;
                                            });
                                          } else
                                            return null;
                                        },
                                        controller: searchJamKerja,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SingleChildScrollView(
                                    child: Container(
                                      // padding: EdgeInsets.all(8),
                                      height: 200,
                                      alignment: Alignment.center,
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 5, 40, 5),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(jadwal[index]),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: const [
                                                        Text(
                                                          "Jam Masuk 00.00",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Jam Pulang 00.00",
                                                          style: TextStyle(
                                                            color:
                                                                Colors.black87,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, int) {
                                            return const Divider(
                                              thickness: 1,
                                              color: Colors.grey,
                                              indent: 20,
                                              endIndent: 20,
                                            );
                                          },
                                          itemCount: jadwal.length),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 15, 30, 15),
                                    child: Container(
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Pilih",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
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

  Widget _jabatan(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
      width: Get.width * 0.9,
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Jabatan / Posisi",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.15)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: const Text(
                      "Pilih",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[300],
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  ListTile(
                                    title: const Padding(
                                      padding: EdgeInsets.fromLTRB(50, 5, 0, 5),
                                      child: Text(
                                        "Jabatan",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(40, 5, 40, 5),
                                    child: Theme(
                                      data: ThemeData(
                                        primaryColor: Colors.teal[200],
                                        primaryColorDark: Colors.tealAccent,
                                      ),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              setState(() {
                                                searchJabatan.clear();
                                              });
                                            },
                                            icon: const Icon(Icons.search),
                                          ),
                                          hintText: "Cari Jabatan",
                                        ),
                                        onChanged: (value) {
                                          if (value.length > 9) {
                                            setState(() {
                                              null;
                                            });
                                          } else
                                            return null;
                                        },
                                        controller: searchJabatan,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  SingleChildScrollView(
                                    child: Container(
                                      height: 250,
                                      alignment: Alignment.center,
                                      child: ListView.separated(
                                          itemBuilder: (context, index) {
                                            return GestureDetector(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        20, 10, 40, 10),
                                                child: Text(
                                                  jabatan[index],
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            );
                                          },
                                          separatorBuilder: (context, int) {
                                            return const Divider(
                                              thickness: 1,
                                              color: Colors.grey,
                                              indent: 20,
                                              endIndent: 20,
                                            );
                                          },
                                          itemCount: jabatan.length),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 15, 30, 15),
                                    child: Container(
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Pilih",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Upah",
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
                        hintText: "Masukkan Upah",
                        border: OutlineInputBorder()),
                    controller: upah,
                    onSaved: (value) {
                      upah.text = value!;
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Masukkan Rekening Bank yang dimiliki",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black.withOpacity(0.15)),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: const Text(
                      "Rekening Bank",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[300],
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  ListTile(
                                    title: const Padding(
                                      padding: EdgeInsets.fromLTRB(50, 5, 0, 5),
                                      child: Text(
                                        "Rekening Bank",
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    trailing: IconButton(
                                      icon: const Icon(Icons.close),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  SingleChildScrollView(
                                    child: Container(
                                      height: Get.height * 0.40,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            20, 10, 20, 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Nama Bank",
                                              style: TextStyle(fontSize: 16),
                                              textAlign: TextAlign.start,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 7),
                                              child: Container(
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10, right: 10),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: const [
                                                      Text("Pilih Bank"),
                                                      Icon(Icons
                                                          .arrow_forward_ios),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Nama Pemilik Rekening",
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
                                                    hintText: "Masukkan nama",
                                                    border:
                                                        OutlineInputBorder()),
                                                controller: pemilikRekening,
                                                onSaved: (value) {
                                                  pemilikRekening.text = value!;
                                                },
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            const Text(
                                              "Nomor Rekening",
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
                                                    hintText: "Masukkan nomor",
                                                    border:
                                                        OutlineInputBorder()),
                                                controller: nomorRekening,
                                                onSaved: (value) {
                                                  nomorRekening.text = value!;
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        30, 0, 30, 15),
                                    child: Container(
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[400],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: MaterialButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Simpan",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
