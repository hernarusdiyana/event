import 'package:event/detail_event.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:readmore/readmore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Travel',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Event'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List category = [
    "Semua",
    "Hiburan",
    "Olahraga",
    "Pendidikan",
    "Lingkungan",
  ];

  // String images;
  // String title;
  // String price;

  // _MyHomePageState({this.images,this.title,.this.price}
  // );
  final List<String> myList = [
    'assets/banner1.jpg',
    'assets/banner2.jpg',
    'assets/banner3.jpg',
    'assets/banner4.jpg',
    'assets/banner5.jpg',
  ];
  final List<String> names = [
    'Blackpink World Tour Jakarta Concert - Day 1',
    'Blackpink World Tour Jakarta Concert - Day 2',
    'Konser Aldi Taher - Leslang',
    'Ini Konser',
    'Event Apa gitu ini',
  ];
  final List<String> location = [
    'Gelora Bung Karno, Jakarta',
    'Gelora Bung Karno, Jakarta',
    'Mars, Tata Surya',
    'Ini Lokasi, Indonesia',
    'Kampus Bina Insani, Bekasi'
  ];
  final List<String> startFrom = [
    '1.350.000',
    '1.350.000',
    '7.600.000',
    '100.000',
    '150.000',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(
          "Event",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15.0),
          // width: MediaQuery.of(context).size.width * (1 / 2),
          // height: MediaQuery.of(context).size.height * (1 / 2),
          child: Scrollbar(
            child: Column(children: [
              GestureDetector(
                onTap: () async {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => DetailEvent()));
                },
                child: Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                          image: AssetImage('assets/images/banner1.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // color: Colors.amber,
                        image: DecorationImage(
                            image: AssetImage('assets/images/banner1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // margin: EdgeInsets.symmetric(vertical: 30),
                width: MediaQuery.of(context).size.width,
                height: 36,

                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  scrollDirection: Axis.horizontal,
                  itemCount: category.length,
                  itemBuilder: (BuildContext context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            backgroundColor: Color.fromRGBO(28, 56, 121, 1),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0))),
                        onPressed: () {},
                        child: Text(
                          category[i],
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 12),
                        ),
                      ),
                    );
                  },
                ),
              ),
              // Container(
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: <Widget>[
              //       ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              //             backgroundColor: Colors.black,
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20.0))),
              //         onPressed: () {},
              //         child: Text(
              //           "Semua",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w400,
              //               fontSize: 12,
              //               ),
              //         ),
              //       ),
              //       ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              //             backgroundColor: Color.fromARGB(31, 196, 196, 196),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20.0))),
              //         onPressed: () {},
              //         child: Text(
              //           "Hiburan",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w400,
              //               color: Colors.black,
              //               fontSize: 12,
              //               ),
              //         ),
              //       ),
              //       ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              //             backgroundColor: Color.fromARGB(31, 196, 196, 196),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20.0))),
              //         onPressed: () {},
              //         child: Text(
              //           "Olahraga",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w400,
              //               color: Colors.black,
              //               fontSize: 12,
              //               ),
              //         ),
              //       ),
              //       ElevatedButton(
              //         style: ElevatedButton.styleFrom(
              //             padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              //             backgroundColor: Color.fromARGB(31, 196, 196, 196),
              //             shape: RoundedRectangleBorder(
              //                 borderRadius: BorderRadius.circular(20.0))),
              //         onPressed: () {},
              //         child: Text(
              //           "Pend",
              //           style: TextStyle(
              //               fontWeight: FontWeight.w400,
              //               color: Colors.black,
              //               fontSize: 12,
              //               ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Event Populer",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Lihat Semua'),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  scrollDirection: Axis.vertical,
                  itemCount: category.length,
                  itemBuilder: (BuildContext context, i) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        color: Color.fromRGBO(28, 56, 121, 1),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: Column(
                              children: [
                                Container(
                                  height: 220,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                      ),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/concert1.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 15, top: 5, right: 15, bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 220,
                                        child: Text(
                                          this.names[i],
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Container(
                                          padding: EdgeInsets.all(10.0),
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            color: Color.fromRGBO(
                                                217, 217, 217, 0.1),
                                          ),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Mulai dari",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w300,
                                                    color: Colors.white),
                                              ),
                                              Text(
                                                "IDR " + this.startFrom[i],
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(
                                      left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Gelora Bung Karno, Indonesia",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
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
            ]),
          ),
        ),
      ),
    );
  }
}
