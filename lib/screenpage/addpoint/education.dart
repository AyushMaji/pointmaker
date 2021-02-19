import 'package:flutter/material.dart';
import 'package:pointmaker/screenpage/addpoint/addpointpage.dart';

class Education extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Heading(),
        Imagebox(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Class10(),
            Class12(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Graduation(),
            PostGraduation(),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Others(),
      ],
    )));
  }
}

// ============================================================others
class Others extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  offset: Offset(0, 4),
                  blurRadius: 4)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )),
    );
  }
}

// ============================================================others
// ============================================================graduation
class Graduation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 2.4,
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
      ],
    );
  }
}

// ============================================================graduation
// ============================================================Postgraduation
class PostGraduation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Container(
            width: MediaQuery.of(context).size.width / 2.4,
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(0, 4),
                    blurRadius: 4)
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            )),
      ],
    );
  }
}
// ============================================================Postgraduation

// ============================================================Class12
class Class12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.4,
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ));
  }
}
// ============================================================Class12

// ============================================================Class10
class Class10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.4,
        height: 150,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(0, 4),
                blurRadius: 4)
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ));
  }
}

// ============================================================Class10
// ============================================================image
class Imagebox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/Addpoint/education.png",
      height: 200,
    );
  }
}

// ============================================================image
// ============================================================heding
class Heading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4)
                  ],
                  color: Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    width: 0.4000000059604645,
                  ),
                )),
            Positioned(
              left: -9,
              top: -6.5,
              child: Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Color.fromRGBO(255, 10, 10, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(58, 56)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
// ============================================================heding
