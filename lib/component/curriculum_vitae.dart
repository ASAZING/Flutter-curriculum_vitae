import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurriculumVitea extends StatelessWidget {
  CurriculumVitea({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  final titles_stadies = ["2020-Actualidad", "2018-2019"];
  // ignore: non_constant_identifier_names
  final subtitles_stadies = [
    "Analisis y Desarolllo De Sistemas De Informacion - SENA",
    "Tecnico En Sistemas - SENA"
  ];

  // ignore: non_constant_identifier_names
  final titles_works = ["2021-Actualidad", "2018-2019"];
  // ignore: non_constant_identifier_names
  final subtitles_works = [
    "Portalteck - Desarrollador De Software",
    "Calipasticos - Tecnico En Sistemas"
  ];

  @override
  Widget build(BuildContext context) {
    double mq = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/12992738?v=4"),
                ),
                Positioned(
                    bottom: 0,
                    right: -25,
                    child: RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: const Color(0xFFF5F6F9),
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.blue,
                      ),
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                    )),
              ],
            ),
          ),
          const Divider(),
          const Center(
            child: Text(
              'MALCOLM MEDINA RIASCOSS',
              style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),
          Container(
            child: const Center(
              child: Text(
                'Educación',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              color: Colors.blue,
            ),
            width: mq,
            height: 50,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: titles_stadies.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                            title: Text(titles_stadies[index]),
                            subtitle: Text(subtitles_stadies[index]),
                            leading: const Icon(Icons.note_alt)));
                  })),
          Container(
            child: const Center(
              child: Text(
                'Experiencia Laboral',
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(40)),
              color: Colors.blue,
            ),
            width: mq,
            height: 50,
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: titles_works.length,
                  itemBuilder: (context, index) {
                    return Card(
                        child: ListTile(
                            title: Text(titles_works[index]),
                            subtitle: Text(subtitles_works[index]),
                            leading: const Icon(Icons.work)));
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(8)),
                child: Container(
                  child: Text('Uno'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0), //
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(8)),
                child: Container(
                  child: Text('Dos'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20.0), //
                alignment: Alignment.center,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  child: Text('Tres'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
