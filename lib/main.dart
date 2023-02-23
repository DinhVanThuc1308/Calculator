import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int num1 = 0;
  // int num2 = 0;
  // String kq = "";
  // String text = "";
  // String pheptinh = "";
  // void btnClicked(String btnText) {
  //   if (btnClicked == "C") {
  //     kq = '';
  //     num1 = 0;
  //     num2 = 0;
  //   } else if (btnText == "+" ||
  //       btnText == "-" ||
  //       btnText == "*" ||
  //       btnText == "/") {
  //     num1 = int.parse(btnText);
  //     kq = "";
  //     pheptinh = btnText;
  //   } else if (btnText == "=") {
  //     num2 = int.parse(btnText);
  //     if (pheptinh == "+") {
  //       kq = (num1 + num2).toString();
  //     }
  //     if (pheptinh == "-") {
  //       kq = (num1 - num2).toString();
  //     }
  //     if (pheptinh == "*") {
  //       kq = (num1 * num2).toString();
  //     }
  //     if (pheptinh == "/") {
  //       kq = (num1 ~/ num2).toString();
  //     }
  //   } else {
  //     kq = int.parse(text + btnText).toString();
  //   }
  //   setState(() {
  //     text = kq;
  //   });
  // }

  int num1 = 0;
  int num2 = 0;
  String kq = "";
  String text = "";
  String pheptinh = "";

  void btnClicked(String btnText) {
    if (btnText == "C") {
      kq = '';
      num1 = 0;
      num2 = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "*" ||
        btnText == "/") {
      num1 = int.parse(text);
      kq = "";
      pheptinh = btnText;
    } else if (btnText == "=") {
      num2 = int.parse(text);
      if (pheptinh == "+") {
        kq = (num1 + num2).toString();
      }
      if (pheptinh == "-") {
        kq = (num1 - num2).toString();
      }
      if (pheptinh == "*") {
        kq = (num1 * num2).toString();
      }
      if (pheptinh == "/") {
        kq = (num1 ~/ num2).toString();
      }
    } else {
      kq = int.parse(text + btnText).toString();
    }
    setState(() {
      text = kq;
    });
  }

  Widget customOutLineButton(String value) {
    return Expanded(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.pink[50],
            ),
            onPressed: () => btnClicked(value),
            child: Text(
              value,
              style: TextStyle(
                fontSize: 30,
                color: Colors.brown,
              ),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Caculator'),
        ),
        body: Container(
          child: Column(children: [
            Expanded(
              child: Container(
                color: Colors.pink[50],
                alignment: Alignment.bottomRight,
                padding: EdgeInsets.all(20),
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                customOutLineButton("9"),
                customOutLineButton("8"),
                customOutLineButton("7"),
                customOutLineButton("+"),
              ],
            ),
            Row(
              children: [
                customOutLineButton("6"),
                customOutLineButton("5"),
                customOutLineButton("4"),
                customOutLineButton("-"),
              ],
            ),
            Row(
              children: [
                customOutLineButton("3"),
                customOutLineButton("2"),
                customOutLineButton("1"),
                customOutLineButton("*"),
              ],
            ),
            Row(
              children: [
                customOutLineButton("0"),
                customOutLineButton("C"),
                customOutLineButton("="),
                customOutLineButton("/"),
              ],
            ),
          ]),
        ));
  }
}
