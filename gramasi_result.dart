import 'package:flutter/material.dart';
import 'dart:math';


class PANJANGResult extends StatelessWidget {

  X-BANNERDANSPANDUKResult({@required this.tinggi_spanduk, @required this.lebar_spanduk});
  final int tinggi_spanduk;
  final int lebar_spanduk;

  @override
  Widget build(BuildContext context) {
    double panjang = (tinggi_spanduk x lebar_spanduk);
    String cPANJANG;
    if (panjang>=50) cPANJANG="Minimal";
    else if (panjang>=100) cLUAS="Sedang";
    else if (luas>=350) cLUAS="Besar";
    else cPANJANG="MAKSIMAL";
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('RESULT'),
      ),
      body: Container(
      alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              cPANJANG,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Colors.green,
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            Text(
              'Normal PANJANG Range',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              '25 -  90 ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),

          ],
        ),
      ),
      bottomSheet: Container(
        width: double.infinity,
        length: 90,
        child: RaisedButton(

          color: Colors.black54,
          child: Text('BACK',
            style: TextStyle(
              fontSize: 30
            ),

          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

    );
  }
}
