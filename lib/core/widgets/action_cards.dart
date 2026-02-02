import 'package:flutter/material.dart';

class ActionCards extends StatelessWidget {
  const ActionCards(
      {super.key,
      // required this.color,
      required this.imagePath,
      // required this.subtitle,
      required this.title});

  final String title;
  // final String subtitle;
  final String imagePath;
  // final String color;

  // Color _colorTranformerLight(String color) {
  //   if (color == "green") {
  //     return Colors.green.shade100;
  //   } else if (color == "yellow") {
  //     return Colors.yellow.shade100;
  //   } else if (color == "indigo") {
  //     return Colors.indigo.shade100;
  //   } else {
  //     return Colors.red.shade100;
  //   }
  // }

  // Color _colorTranformer(String color) {
  //   if (color == "green") {
  //     return Colors.green;
  //   } else if (color == "yellow") {
  //     return Colors.yellow.shade700;
  //   } else if (color == "indigo") {
  //     return Colors.indigo;
  //   } else {
  //     return Colors.red;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * .10,
            // width: MediaQuery.of(context).size.width * .10,
            //         decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.fill,
            //     image: NetworkImage("https://picsum.photos/250?image=9"),
            //   ),
            // )

            // foregroundDecoration: BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.topRight,
            //   end: Alignment.bottomLeft,
            //   // colors: [Colors.blue, Colors.blueGrey],
            //   colors: [Colors.blue.shade900, '#0E42F8C9'.toColor()],
            // ),
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(12.0),
            //   ),
            // ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imagePath)),
                border: Border.all(color: Colors.grey.shade300),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                  ),
                ],
                color: Color(0xFF18181B)),
            alignment: Alignment.bottomCenter,
            // child:

            // child: Column(
            //   children: [
            //     Padding(
            //         padding: const EdgeInsets.all(15.0),
            //         child: Center(child: Text("You"))),
            //   ],
            // ),
          ),
          Positioned.fill(
              child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade900,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.blue.shade900
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: const [0, 0, 0.6, 1],
              ),
            ),
          )),
          Positioned(
            bottom: 0,
            child: Container(
                margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                width: MediaQuery.of(context).size.width * 0.92,
                decoration: BoxDecoration(
                  color: Color(0xFF18181B),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: const Offset(1, 1),
                    ),
                  ],
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(title,
                        style:
                            const TextStyle(fontSize: 19, color: Colors.white),
                        maxLines: 1,
                        textAlign: TextAlign.center))),
          )
        ],
      ),
    );
  }
}

class ActionCards2 extends StatelessWidget {
  const ActionCards2(
      {super.key,
      // required this.color,
      required this.imagePath,
      // required this.subtitle,
      required this.title});

  final String title;
  // final String subtitle;
  final String imagePath;
  // final String color;

  // Color _colorTranformerLight(String color) {
  //   if (color == "green") {
  //     return Colors.green.shade100;
  //   } else if (color == "yellow") {
  //     return Colors.yellow.shade100;
  //   } else if (color == "indigo") {
  //     return Colors.indigo.shade100;
  //   } else {
  //     return Colors.red.shade100;
  //   }
  // }

  // Color _colorTranformer(String color) {
  //   if (color == "green") {
  //     return Colors.green;
  //   } else if (color == "yellow") {
  //     return Colors.yellow.shade700;
  //   } else if (color == "indigo") {
  //     return Colors.indigo;
  //   } else {
  //     return Colors.red;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: Stack(children: [
        Image.asset(
          imagePath,
          height: 90,
          width: 130,
          fit: BoxFit.cover,
        ),
        Positioned(
            top: -150,
            right: -100,
            // bottom: 0,
            left: 170,
            child: Container(
              height: 300,
              // constraints: BoxConstraints.expand(
              //   height: Theme.of(context).textTheme.headlineMedium!.fontSize! * 1.1 + 200.0,
              // ),
              padding: const EdgeInsets.all(8.0),
              // color: Colors.blue[600],
              color: Colors.white,
              alignment: Alignment.center,
              transform: Matrix4.rotationZ(0.3),
            )),
        Positioned(
            top: 0,
            right: 20,
            bottom: 0,
            left: 130,
            child: Center(
              child: SingleChildScrollView(
                  child: Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 15),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
                ],
              )),
            ))
      ]),
    );
  }
}
