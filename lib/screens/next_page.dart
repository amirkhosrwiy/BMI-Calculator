import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3E54AC),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'تو چنده؟؟؟ bmi',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'QT',
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 370,
                  height: 170,
                  decoration: BoxDecoration(
                    color: Color(0xff3E54AC),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Center(
                    child: Wrap(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'It is health is real wealth and not pieces of gold and silver',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'GI',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'این طلا و نقره نیست که ثروت واقعی \n به شمار می آید \n بلکه ثروت واقعی، سلامتی شماست',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'QT',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/bmi.png',
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                width: 300,
                height: 75,
                decoration: BoxDecoration(
                  color: Color(0xff3E54AC),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Center(
                  child: Wrap(
                    children: [
                      Center(
                        child: Text(
                          'طراح اپلیکیشن : سید رضا موسوی فر',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'QT',
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
