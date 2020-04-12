import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'DptQuestion.dart';
import 'MyHomePage.dart';

class DepartmentPage extends StatefulWidget {
  static const String id = "Department Page";

  @override
  _DepartmentPageState createState() => _DepartmentPageState();
}

class _DepartmentPageState extends State<DepartmentPage> {
  // final wheelNumber;
  // DepartmentPage(this.wheelNumber);
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names


   String DataLabel = RouletteScore.SpinLabel;
   var ListIndex = int.parse(DataLabel);


    // ignore: non_constant_identifier_names
    Map<String, String> DataQuestion = Questions.question_List[ListIndex];
       // ignore: non_constant_identifier_names
       String Data= DataQuestion.toString();

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(DataLabel,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 30.0,
                      )),
                  SizedBox(height: 30.0,),
                  Text(Data,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 30.0,
                      ))
                ])));
  }
}
