import 'package:calculator/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {},
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget button(String btntxt, Color btncolor, Color txtcolor) {
    return SizedBox(
      height: 80,
      width: 80,
      child: ElevatedButton(
        onPressed: () {
          calculation(btntxt);
        },
        child: Text(
          '$btntxt',
          style: TextStyle(color: txtcolor, fontSize: 30),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(btncolor),
          shadowColor: MaterialStateProperty.all(
            Colors.blue,
          ),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
          side: MaterialStateProperty.all(BorderSide(color: btncolor)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle.light,
            child: Stack(
              children: [
                Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Color.fromARGB(255, 255, 255, 255),
                          Color.fromARGB(255, 249, 252, 255),
                          Color.fromARGB(255, 230, 244, 255),
                          Color.fromARGB(255, 204, 232, 255),
                        ])),
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                        child: Text(
                          '$res',
                          style: TextStyle(fontSize: 60, color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
                        child: Text(
                          '$text',
                          style: TextStyle(fontSize: 100),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    button(
                                      "C",
                                      Colors.white,
                                      Colors.black38,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "⌫",
                                      Colors.white,
                                      Colors.black38,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "/",
                                      Colors.blue.shade200,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "*",
                                      Colors.blue.shade200,
                                      Colors.blue.shade600,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    button(
                                      "7",
                                      Colors.white,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "8",
                                      Colors.white,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "9",
                                      Colors.white,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "-",
                                      Colors.blue.shade200,
                                      Colors.blue.shade600,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    button(
                                      "4",
                                      Colors.white,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "5",
                                      Colors.white,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "6",
                                      Colors.white,
                                      Colors.blue.shade600,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    button(
                                      "+",
                                      Colors.blue.shade200,
                                      Colors.blue.shade600,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                button(
                                                  "1",
                                                  Colors.white,
                                                  Colors.blue.shade600,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                button(
                                                  "2",
                                                  Colors.white,
                                                  Colors.blue.shade600,
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                button(
                                                  "3",
                                                  Colors.white,
                                                  Colors.blue.shade600,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  height: 80,
                                                  width: 175,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      calculation("0");
                                                    },
                                                    child: Text(
                                                      "0",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blue.shade600,
                                                          fontSize: 30),
                                                    ),
                                                    style: ButtonStyle(
                                                      backgroundColor:
                                                          MaterialStateProperty
                                                              .all(
                                                                  Colors.white),
                                                      shadowColor:
                                                          MaterialStateProperty
                                                              .all(
                                                        Colors.blue.shade100,
                                                      ),
                                                      shape: MaterialStateProperty.all(
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          15))),
                                                      side:
                                                          MaterialStateProperty
                                                              .all(BorderSide(
                                                                  color: Colors
                                                                      .white)),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                button(".", Colors.white,
                                                    Colors.blue.shade600),
                                              ],
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        SizedBox(
                                          height: 175,
                                          width: 80,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              calculation("=");
                                            },
                                            child: Text(
                                              "=",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 255, 255, 255),
                                                  fontSize: 30),
                                            ),
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all(
                                                Colors.blue,
                                              ),
                                              shadowColor:
                                                  MaterialStateProperty.all(
                                                Colors.blue,
                                              ),
                                              shape: MaterialStateProperty.all(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15))),
                                              side: MaterialStateProperty.all(
                                                  BorderSide(
                                                      color: Colors.white)),
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ]))
              ],
            )));
  }

  //Calculator logic
  dynamic text = '0';
  dynamic res = '';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {
    if (btnText == "=") {
      res = "0";
    } else {
      res = res + btnText;
    }
    if (btnText == 'C') {
      text = '0';
      res = '';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';
    } else if (opr == '=' && btnText == '=') {
      res = '';
      if (preOpr == '+') {
        finalResult = add();
      } else if (preOpr == '-') {
        finalResult = sub();
      } else if (preOpr == '*') {
        finalResult = mul();
      } else if (preOpr == '/') {
        finalResult = div();
      } else if (btnText == '+') {
        res = '0';
      }
    } else if (btnText == '+' ||
        btnText == '-' ||
        btnText == '*' ||
        btnText == '/' ||
        btnText == '=') {
      if (numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if (opr == '+') {
        finalResult = add();
      } else if (opr == '-') {
        finalResult = sub();
      } else if (opr == '*') {
        finalResult = mul();
      } else if (opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    } else if (btnText == '.') {
      if (!result.toString().contains('.')) {
        result = result.toString() + '.';
      }
      finalResult = result;
    } else if (btnText == '+/-') {
      result.toString().startsWith('-')
          ? result = result.toString().substring(1)
          : result = '-' + result.toString();
      finalResult = result;
    } else {
      result = result + btnText;
      finalResult = result;
    }

    setState(() {
      text = finalResult;
    });
  }

  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String doesContainDecimal(dynamic result) {
    if (result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if (!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }
}
