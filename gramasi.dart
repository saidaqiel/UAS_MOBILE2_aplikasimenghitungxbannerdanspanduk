import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'PANJANG_result.dart';

class InputPANJANG extends StatefulWidget {
  @override
  _InputPANJANGState createState() => _InputPANJANGState();
}

class _InputPANJANGState extends State<InputPANJANG> {
  int tinggi = 0;
  int lebar = 0;

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
            //backgroundColor: Colors.green[70],
            appBar: AppBar(
              //backgroundColor: Colors.blue[900],
              centerTitle: true,
              leading: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              title: Text('MENGHITUNG PANJANG X-BANNER DAN SPANDUK'),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  
                  ),

                  Container(
                       margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(10),
                     // color: Colors.blue[700],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  tinggi = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('cm'),

                                  filled: true,
                                  hintText: 'panjang'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: TextField(
                              onChanged: (txt) {
                                setState(() {
                                  berat = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              maxLength: 3,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  suffix: Text('cm'),
                                  filled: true,
                                  hintText: 'Lebar'),
                            ),
                          ),
                        ],
                      )),

                  Container(
                   //height: double.infinity,
                     margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                     child: RaisedButton(
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => PANJANGResult(tinggi_spanduk: tinggi, lebar_spanduk: lebar)),
                         );
                       },
                       padding: EdgeInsets.only(top: 10, bottom: 10),
                       color: Colors.black,
                       // textColor: Colors.white,
                       child: Text(
                         'HITUNG PANJANG X-BANNER DAN SPANDUK',
                         style:
                         TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                       ),
                     ),
                   ),



                ],
              ),
            ),
          bottomNavigationBar: BottomAppBar(
            //color: Colors.transparent,
            child: Container(
              height: 60,
              color: Colors.black54,
              alignment: Alignment.center,
              child: Text(
                'Developed by Muhammad Said Aqiel',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            //elevation: 0,
          ),
        );
  }
}
