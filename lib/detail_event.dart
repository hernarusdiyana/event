import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'main.dart';

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
                    padding: EdgeInsets.all(10),
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
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins'),
                          ),
                        ),
                        Text(
                          "IDR 1.350.000",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
