import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../homepage.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => HomePage()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.jpg', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 20.0, fontFamily: "Merienda");
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 40.0, fontWeight: FontWeight.w700, fontFamily: 'Merienda'),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,

      // ======================================================== all introduction pages
      pages: [
        PageViewModel(
          title: "virtualbank",
          body:
              "Instead of having to buy an entire share, invest any amount you want.",
          image: _buildImage('introduction/onbording'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Education",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildImage('introduction/onbording_1'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Projects",
          body:
              "Kids and teens can track their stocks 24/7 and place trades that you approve.",
          image: _buildImage('introduction/onbording_2'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "PointMaker",
          body: "Another beautiful body text for this example onboarding",
          image: _buildImage('introduction/onbording_3'),
          footer: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => HomePage()),
              );
            },
            child: Text('Make your  Acount '),
          ),
          decoration: pageDecoration,
        ),

        // ======================================================== all introduction pages
      ],
      // Icon(Icons.arrow_forward)
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Skip',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Merienda",
            color: Colors.grey),
      ),
      next: Nextbutton(),
      done: Nextbutton(),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class Nextbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 41,
        height: 40,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(Icons.arrow_forward),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(0, 2),
                          blurRadius: 2)
                    ],
                    color: Color.fromRGBO(25, 187, 238, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(41, 40)),
                  ))),
        ]));
  }
}
