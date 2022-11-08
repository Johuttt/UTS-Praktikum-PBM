import 'package:sport/detail.dart';
import 'package:sport/list.dart';
import 'package:flutter/material.dart';
import 'package:sport/login.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 20.0),
            buildBannerRow('Sport', context),
            const SizedBox(height: 30.0),
            builBannerList(context),
            const SizedBox(height: 20.0),
            buildSearchBar(context),
            const SizedBox(height: 20.0),
            buildSportRow('Sport', context),
            const SizedBox(height: 30.0),
            buildSportList(context),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

buildBannerRow(String sport, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      const Text(
        "Sportspedia",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
        ),
      ),
      InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginPage()));
          },
          child: const Icon(Icons.logout, size: 20, color: Colors.black)),
    ],
  );
}

buildSportRow(String sport, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    // ignore: prefer_const_literals_to_create_immutables
    children: <Widget>[
      const Text(
        "Berita Terbaru",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ],
  );
}

builBannerList(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 160,
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) =>
                buildCard(item: listSport[index], context),
          ),
        ),
      ],
    ),
  );
}

Widget buildCard(BuildContext context, {required SportModel item}) => Container(
      height: 100,
      width: 200,
      margin: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: InkWell(
              child: Image.asset(
                item.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
                      itemSport: item,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );

buildSearchBar(BuildContext context) {
  return Card(
    elevation: 6.0,
    child: Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: TextField(
        style: const TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(5.0),
          ),
          hintText: "Cari berita . . ",
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintStyle: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
          ),
        ),
        maxLines: 1,
      ),
    ),
  );
}

buildSportList(BuildContext context) {
  return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      mainAxisExtent: 250,
    ),
    itemCount: listSport.length,
    itemBuilder: (context, index) {
      final SportModel item = listSport[index];
      return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Detail(
                  itemSport: item,
                ),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: const Color.fromARGB(255, 241, 241, 241),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
                child: Image.asset(
                  item.image,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.nama,
                      style: Theme.of(context).textTheme.subtitle1!.merge(
                            const TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(item.tanggal,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 224, 98, 98),
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
