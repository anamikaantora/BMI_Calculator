import 'package:flutter/material.dart';
import 'package:myapp/calculate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color aColor = Color(0xFF171A2D);
  Color bColor = Color(0xFF28293D);
  double height = 100;
  int weight = 56;
  int age = 25;
  bool? isMale;
  var ans, comment, advice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aColor,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        elevation: 5,
        centerTitle: true,
        backgroundColor: aColor,
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color:
                                        isMale == true ? Colors.teal : bColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Male",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            flex: 5,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isMale = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color:
                                        isMale == false ? Colors.teal : bColor),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.female,
                                      size: 50,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Female",
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.white60),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ],
                    ),
                    flex: 6,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: bColor),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Height",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white70),
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              Text('${height.toStringAsFixed(1)}',
                                  style: TextStyle(
                                      fontSize: 32, color: Colors.white)),
                              Text('cm',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white70)),
                            ],
                          ),
                          SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                  inactiveTickMarkColor: Colors.grey,
                                  activeTrackColor: Colors.blue.shade800,
                                  thumbColor: Colors.blue.shade800,
                                  thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 10.0)),
                              child: Slider(
                                  min: 70,
                                  max: 190,
                                  value: height,
                                  onChanged: (double value) {
                                    setState(() {
                                      height = value;
                                    });
                                  }))
                        ],
                      ),
                    ),
                    flex: 6,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: bColor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Weight",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white60),
                                  ),
                                  Text(
                                    "$weight",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(12),
                                            shape: CircleBorder(),
                                            primary: aColor),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(12),
                                            shape: CircleBorder(),
                                            primary: aColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                            flex: 5,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: bColor),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Age",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white60),
                                  ),
                                  Text(
                                    "$age",
                                    style: TextStyle(
                                        fontSize: 30, color: Colors.white),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(12),
                                            shape: CircleBorder(),
                                            primary: aColor),
                                      ),
                                      ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        child: Icon(
                                          Icons.remove,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.all(12),
                                            shape: CircleBorder(),
                                            primary: aColor),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                    flex: 6,
                  ),
                ],
              ),
            ),
            flex: 14,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Calculate cal =
                    Calculate(age: age, height: height, weight: weight);
                ans = cal.calculate();
                comment = cal.getInterpretation();
                advice = cal.getResult();
                showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Your BMI is $ans'),
                    content: Text('$comment'),
                    actions: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: new Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                color: Colors.blue.shade800,
                alignment: Alignment.center,
                child: Text(
                  "CALCULATE",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
