import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var displayValue = "";

  void calculation() {
    Parser p = Parser();
    Expression exp = p.parse(displayValue);
    ContextModel cm = ContextModel();
    String result = exp.evaluate(EvaluationType.REAL, cm).toString();
    setState(() {
      displayValue = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            height: Size.infinite.height,
            width: Size.infinite.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 100,
                    width: Size.infinite.width,
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          displayValue,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                displayValue = "";
                              });
                            },
                            icon: Icon(Icons.cancel))
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "";
                          });
                        },
                        child: Text(
                          "C",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "D",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}.";
                          });
                        },
                        child: Text(
                          ".",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}+";
                          });
                        },
                        child: Text(
                          "+",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: Size.infinite.width,
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}1";
                          });
                        },
                        child: Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}2";
                          });
                        },
                        child: Text(
                          "2",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}3";
                          });
                        },
                        child: Text(
                          "3",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}-";
                          });
                        },
                        child: Text(
                          "-",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: Size.infinite.width,
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}4";
                          });
                        },
                        child: Text(
                          "4",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}5";
                          });
                        },
                        child: Text(
                          "5",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}6";
                          });
                        },
                        child: Text(
                          "6",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}*";
                          });
                        },
                        child: Text(
                          "*",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: Size.infinite.width,
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}7";
                          });
                        },
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}8";
                          });
                        },
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}9";
                          });
                        },
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}/";
                          });
                        },
                        child: Text(
                          "/",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: Size.infinite.width,
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}0";
                          });
                        },
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue}(";
                          });
                        },
                        child: Text(
                          "(",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            displayValue = "${displayValue})";
                          });
                        },
                        child: Text(
                          ")",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                    TextButton(
                        onPressed: () {
                          calculation();
                        },
                        child: Text(
                          "=",
                          style: TextStyle(fontSize: 20),
                        )),
                    Container(
                      color: Colors.black,
                      width: 2,
                      height: 80,
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  width: Size.infinite.width,
                  height: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
