import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pointmaker/screenpage/addpoint/education.dart';

class AddPoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Heading(),
        SizedBox(
          height: 30,
        ),
        Slider(),
        SizedBox(
          height: 60,
        ),
        LowerPart(),
      ],
    )));
  }
}

class LowerPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset: Offset(0, 4),
              blurRadius: 4)
        ],
        color: Colors.amber,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Eduction(),
          SizedBox(
            height: 50,
          ),
          Projects(),
          SizedBox(
            height: 50,
          ),
          Others(),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}

// ============================================================Education
class Eduction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Education()))
      },
      child: Center(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Positioned(
              top: -20,
              left: -20,
              child: Image.asset(
                "assets/Addpoint/education.png",
                height: 110,
              ),
            ),
            Positioned(
                top: 19,
                left: 135,
                child: Text('Education',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.exo(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 27,
                        fontWeight: FontWeight.normal,
                        height: 1))),
            Positioned(
              top: 10,
              right: 13,
              child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.elliptical(58, 56)),
                  )),
            ),
            Positioned(
              top: 21.3,
              right: 21,
              child: Image.asset(
                "assets/Addpoint/arrow.png",
                height: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// ============================================================Education

// ============================================================Projects
class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Center(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Positioned(
              top: 10,
              right: 13,
              child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.elliptical(58, 56)),
                  )),
            ),
            Positioned(
              top: -21,
              left: -25,
              child: Image.asset(
                "assets/Addpoint/projects.png",
                height: 90,
              ),
            ),
            Positioned(
                top: 19,
                left: 135,
                child: Text('PROJECTS',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.exo(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 27,
                        fontWeight: FontWeight.normal,
                        height: 1))),
            Positioned(
              top: 21.3,
              right: 21,
              child: Image.asset(
                "assets/Addpoint/arrow.png",
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ============================================================Projects

// ============================================================Others
class Others extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Center(
        child: Stack(
          overflow: Overflow.visible,
          children: [
            Container(
              height: 65,
              width: MediaQuery.of(context).size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(0, 4),
                      blurRadius: 4)
                ],
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
            ),
            Positioned(
              top: -25,
              left: -28,
              child: Image.asset(
                "assets/Addpoint/others.png",
                height: 110,
                width: 90,
              ),
            ),
            Positioned(
                top: 19,
                left: 135,
                child: Text('PROJECTS',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.exo(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 27,
                        fontWeight: FontWeight.normal,
                        height: 1))),
            Positioned(
              top: 10,
              right: 13,
              child: Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 4),
                          blurRadius: 4)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.elliptical(58, 56)),
                  )),
            ),
            Positioned(
              top: 21.3,
              right: 21,
              child: Image.asset(
                "assets/Addpoint/arrow.png",
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
// ============================================================Others

// ============================================================slider
class Slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: [
          Container(
            width: MediaQuery.of(context).size.width / 1.3,
            color: Colors.amber,
          ),
        ],
        options: CarouselOptions(
          height: 180,
          aspectRatio: 16 / 9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}

// ============================================================slider

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
