import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'main.dart';
import 'package:readmore/readmore.dart';

class DetailEvent extends StatefulWidget {
  const DetailEvent({Key? key}) : super(key: key);
  @override
  DetailEventState createState() => DetailEventState();
}

class DetailEventState extends State<DetailEvent> {
  String id = "";
  String title = "";
  String location = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(9, 191, 191, 191),
      //   elevation: 0,
      //   title: Text(
      //     "Detail Event",
      //     style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
      //   ),
      //   actions: <Widget>[
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.share,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Scrollbar(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/banner1.jpg"),
                          fit: BoxFit.cover)),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 220,
                        child: Text(
                          "Blackpink World Tour  Jakarta Concert - Day 1",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Text(
                        "IDR 1.350.000",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Gelora Bung Karno, Jakarta",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "11",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Maret"),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Sabtu",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("19:00 - Selesai"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15, left: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Tentang Event",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      ReadMoreText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elite, sed do eiusmod tempor indidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute ire dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Kecuali sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ',
                        style: TextStyle(fontSize: 12),
                        trimLines: 3,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      ReadMoreText(
                        'Show DAY 1: Sabtu, 11 Maret 2023 (19.00 WIB) General Sales untuk pertunjukan DAY 1 dimulai pada tanggal 15 November 2022 (jam 12.00 siang). 1 orang dapat membeli maks. 6 tiket per hari pertunjukan. Kursi bersifat diurutkan (Numbered Seating) dengan penentuan yang diatur oleh sistem tiket.com berdasarkan ketersediaan tiket. Untuk tiket CAT 2, CAT 3, dan CAT 4, nomor kursi akan ditentukan oleh tiket.com dan akan diinformasikan lewat email & WA. Nomor kursi dipilihkan oleh sistem sehingga kemungkinan bisa terpisah meskipun dengan satu order ID yang sama. Sesuai dengan regulasi yang tertera pada Surat Edaran (SE) Satuan Tugas Penanganan Covid-19 20/2022, seluruh penonton wajib sudah menerima Vaksinasi Lengkap. Khusus untuk penonton yang berusia 18 tahun ke atas wajib sudah menerima Vaksin Booster. Seluruh penonton wajib membawa Sertifikat Vaksin tercetak (untuk menghindari adanya gangguan sinyal dan aplikasi Peduli Lindungi tidak dapat digunakan). ',
                        style: TextStyle(fontSize: 12),
                        trimLines: 3,
                        colorClickableText: Colors.pink,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Area Event",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Image.asset(
                        "assets/images/banner1.jpg",
                        width: 120,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Katalog Paket",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      // Card(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(15),
                      //   ),
                      //   color: Color.fromRGBO(28, 56, 121, 1),
                      //   elevation: 10,
                      //   child: Column(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: <Widget>[
                      //       const ListTile(
                      //         leading: Icon(
                      //           Icons.album,
                      //           size: 20,
                      //           color: Colors.white,
                      //         ),
                      //         title: Text(
                      //           "VIP",
                      //           style: TextStyle(
                      //               fontSize: 16,
                      //               color: Colors.white,
                      //               fontWeight: FontWeight.w600),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 600,
                        child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (BuildContext context, i) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                color: Color.fromARGB(246, 114, 146, 194),
                                child: SizedBox(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          color:
                                              Color.fromRGBO(96, 126, 170, 1),
                                          padding: const EdgeInsets.only(
                                              left: 15,
                                              top: 5,
                                              right: 15,
                                              bottom: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                width: 220,
                                                child: Text(
                                                  "VIP",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                // width: 100,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    textStyle: const TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                  child: const Text(
                                                    'Pilih Paket',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      decoration: TextDecoration
                                                          .underline,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 15, right: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "IDR 3.000.000",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              Text(
                                                "6.170",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            backgroundColor: Color.fromRGBO(28, 56, 121, 1),
                          ),
                          onPressed: () {},
                          child: const Text("Pesan Tiket"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
