// ignore_for_file: sort_child_properties_last

import 'package:sport/list.dart';
import 'package:flutter/material.dart';
import 'package:sport/menu.dart';

class Detail extends StatelessWidget {
  final SportModel itemSport;
  const Detail({
    super.key,
    required this.itemSport,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: <Widget>[
                  const Text(
                    "Sportspedia",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  itemSport.image,
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemSport.nama,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(itemSport.tanggal,
                          style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          )),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: Text(
                  itemSport.keterangan,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MenuPage(),
              ));
        },
        tooltip: 'Kembali',
        child: const Icon(Icons.arrow_back),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
