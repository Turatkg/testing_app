import 'package:flutter/material.dart';
import 'package:testing_app/ui/consts.dart';
import 'data/test_toptomu.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> tandalgandar = [];

  TestToptomu test_1 = TestToptomu();

  void buttonFunksiya(bool tandalganButton) {
    if (test_1.testButtubu() == true) {
      //test_1.testButtubu() == true bolgo anda
      //alertDialog korunot

      showDialog(
        context: context,
        builder: (BuildContext context) {
          //return dialog object
          return AlertDialog(
            title: new Text('Test buttu'),
            // content: new Text('Suroolor buttu, testty jyiyntuktaibyz'),
            actions: <Widget>[
              // ignore: deprecated_member_use
              new FlatButton(
                child: new Text('Basynan basta'),
                onPressed: () {
                  Navigator.of(context).pop();
                  setState(() {
                    //bul setSate betti janydan bastayt
                    test_1.testiJanyla();
                    tandalgandar = [];
                  });
                },
              )
            ],
          );
        },
      );
    } else {
      setState(() {
        test_1.getjooptor() == tandalganButton
            ? tandalgandar.add(tuuraIcon)
            : tandalgandar.add(kataIcon);

        test_1.kiyinkiSuroo();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getsurooTexti(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 6.0,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      textColor: Colors.white,
                      color: Colors.red[400],
                      child: Icon(
                        Icons.close,
                        size: 30.0,
                      ),
                      onPressed: () {
                        buttonFunksiya(false);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      textColor: Colors.white,
                      color: Colors.green[400],
                      child: Icon(
                        Icons.check,
                        size: 30.0,
                      ),
                      onPressed: () {
                        buttonFunksiya(true);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Wrap(
          spacing: 3,
          runSpacing: 5,
          children: tandalgandar,
        ),
      ],
    );
  }
}
