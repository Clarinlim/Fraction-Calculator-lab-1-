import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  TextEditingController _num1ctrl = new TextEditingController();
  TextEditingController _num2ctrl = new TextEditingController();
  TextEditingController _num3ctrl = new TextEditingController();
  TextEditingController _num4ctrl = new TextEditingController();
  TextEditingController _num5ctrl = new TextEditingController();
  TextEditingController _num6ctrl = new TextEditingController();
  int answerup=0,answerdown=0;
  int result,answer;

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text('Fraction Calculator'),
          ),
          body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 120, 30, 0),
                            child: TextField(
                                controller: _num1ctrl,
                                keyboardType: TextInputType.numberWithOptions(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.black),
                                ))))),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 120, 30, 0),
                            child: TextField(
                                controller: _num3ctrl,
                                keyboardType: TextInputType.numberWithOptions(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.black),
                                ))))),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 120, 30, 0),
                            child: TextField(
                              controller: _num5ctrl,
                              textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.black),
                                )))))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Container(
                              height: 4.0,
                              width: 100.0,
                              color: Colors.black,
                            ))),
                    Text("+", style: TextStyle(fontSize: 25)),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 4.0,
                              width: 100.0,
                              color: Colors.black,
                            ))),
                    Text("=", style: TextStyle(fontSize: 25)),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Container(
                              height: 4.0,
                              width: 100.0,
                              color: Colors.black,
                            )))
                  ],
                ),
                Row(
                  children: <Widget>[
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 30, 200),
                            child: TextField(
                                controller: _num2ctrl,
                                keyboardType: TextInputType.numberWithOptions(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.black),
                                ))))),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 30, 200),
                            child: TextField(
                                controller: _num4ctrl,
                                keyboardType: TextInputType.numberWithOptions(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.black),
                                ))))),
                    Flexible(
                        child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 30, 200),
                            child: TextField(
                              controller: _num6ctrl,
                              textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 25,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                ),
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(0),
                                  borderSide: BorderSide(color: Colors.black),
                                )))))
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget>[
                  MaterialButton(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                    side:BorderSide(color:Colors.black)
                    ),
                    
                    elevation: 20.0,
                    minWidth: 200.0,
                    height: 50,
                    color: Colors.blueAccent,
                    onPressed:(){
                      _calculate();
                    },
                    child: new Text('Calculate',

                    )
                  ),
                RaisedButton(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  shape:RoundedRectangleBorder(
                    borderRadius:new BorderRadius.circular(18.0),
                    side:BorderSide(color:Colors.black)
                    ),
                  textColor: Colors.black,
                  color: Colors.grey,
                  onPressed: (){
                    clear();
                  },
                  child: new Text("Clear")
                    )
                  ]
                ) 
                  ]
              )),
                    ));
                            
                      }
                      void _calculate() {
                        setState(() {
                          int a = int.parse(_num1ctrl.text);
                          int b = int.parse(_num2ctrl.text);
                          int c = int.parse(_num3ctrl.text);
                          int d = int.parse(_num4ctrl.text);
                          result = (a*d)+(b*c);
                          answer = (b*d);
                          _num5ctrl.text ="$result";
                          _num6ctrl.text ="$answer";
                    
                          
                    
                    
                        });
                          
                        }
                    
                      void clear() {
                        setState(() {
                        _num1ctrl.text ="";
                        _num2ctrl.text ="";
                        _num3ctrl.text ="";
                        _num4ctrl.text ="";
                        _num5ctrl.text ="";
                        _num6ctrl.text ="";
                      });}
                      
}


        
        
      
      
      
      
    
    
