import 'package:flutter/material.dart';
import 'package:testing_app/data/quastions.dart';
import 'package:testing_app/ui/consts.dart';

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

  int surooIndex = 0;

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
                surooToptomu[surooIndex].surooTexti,
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
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      textColor: Colors.white,
                      color: Colors.red[400],
                      child: Icon(
                        Icons.close,
                        size: 30.0,
                      ),
                      onPressed: () {
                        setState(() {
                          surooToptomu[surooIndex].jooptoru == false
                              ? tandalgandar.add(tuuraIcon)
                              : tandalgandar.add(kataIcon);

                          surooIndex++;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(10),
                      textColor: Colors.white,
                      color: Colors.green[400],
                      child: Icon(
                        Icons.check,
                        size: 30.0,
                      ),
                      onPressed: () {
                        setState(() {
                          surooToptomu[surooIndex].jooptoru == true
                              ? tandalgandar.add(tuuraIcon)
                              : tandalgandar.add(kataIcon);
                          surooIndex++;
                        });
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
