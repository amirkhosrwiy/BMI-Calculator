import 'package:bmi/screens/next_page.dart';
import 'package:bmi/widgets/background_shape_left.dart';
import 'package:bmi/widgets/background_shape_right.dart';
// import 'package:bmi/screens/next_page.dart';
// import 'package:bmi/widgets/background_shape_left.dart';
// import 'package:bmi/widgets/background_shape_right.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();

  double resultBMI = 0;
  String resultText = '';
  double widthGood = 100;
  double widthBad = 100;
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 130,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3E54AC),
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'وزن شما',
                        labelStyle: TextStyle(
                            color: Colors.green,
                            fontSize: 20,
                            fontFamily: 'QT',
                            fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.fact_check,
                          color: Colors.teal,
                          size: 40,
                        ),
                        hintText: 'وزن',
                        hintStyle: TextStyle(
                            fontFamily: 'QT',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3E54AC).withOpacity(0.5)),
                      ),
                    ),
                  ),
                  Container(
                    width: 130,
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff3E54AC),
                      ),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        labelText: 'قد شما',
                        labelStyle: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontFamily: 'QT',
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.height_rounded,
                          color: Colors.teal,
                          size: 40,
                        ),
                        hintText: 'قد',
                        hintStyle: TextStyle(
                            fontFamily: 'QT',
                            fontWeight: FontWeight.bold,
                            color: Color(
                              0xff3E54AC,
                            ).withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  final weight = double.parse(weightController.text);
                  final height = double.parse(heightController.text);

                  setState(() {
                    resultBMI = weight / (height * height);
                    if (resultBMI > 25) {
                      widthBad = 270;
                      widthGood = 50;
                      resultText = 'شما اضافه وزن دارید';
                    } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                      resultText = 'وزن شما نرمال است';
                      widthBad = 50;
                      widthGood = 270;
                    } else {
                      resultText = 'وزن شما کمتر از حد نرمال است';
                      widthBad = 270;
                      widthGood = 100;
                    }
                  });

                  print(heightController.text);
                },
                child: Text(
                  '!محاسبه کن',
                  style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'QT',
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                '${resultBMI.toStringAsFixed(2)}',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 64,
                    fontFamily: 'QT'),
              ),
              SizedBox(height: 20),
              Text(
                '$resultText',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'QT',
                  fontWeight: FontWeight.bold,
                  color: Color(0xff655DBB),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              RightShape(
                width: widthBad,
              ),
              SizedBox(
                height: 15,
              ),
              LeftShape(
                width: widthGood,
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(height: 80),
              Container(
                width: 160,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3E54AC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                  onPressed: (() {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext Context) {
                          return NextPage();
                        },
                      ),
                    );
                  }),
                  child: Text(
                    'صفحه بعد',
                    style: TextStyle(
                      fontFamily: 'QT',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
