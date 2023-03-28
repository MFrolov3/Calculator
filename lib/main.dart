import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  ).then((val) {
    runApp(const Calculator());
  });
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override

  Widget build(BuildContext context) {
    return const MaterialApp(home: MyApp());
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String output = '0';

  removeTrailingZeros(String n) {
    return n.replaceAll(RegExp(r"([.]*0+)(?!.*\d)"), "");
  }

  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,

      child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black54,),
          onPressed: () {setState(() {
            final player = AudioPlayer();
            player.play(AssetSource('aud1.wav'));
            if (buttonText == '+' && output != '0'){
              if (double.tryParse(output) is double) {
                output += '+';
              }
              else if (double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-', 1) || output.contains('*'))){
                if (output.contains(':')) {
                  output = (double.parse((output.split(':'))[0]) / double.parse((output.split(':'))[1])).toString();
                }
                if (output.contains('+')) {
                  output = (double.parse((output.split('+'))[0]) + double.parse((output.split('+'))[1])).toString();
                }
                if (output.contains('-', 1)){
                  output = output.replaceFirst('-', '_', 1);
                  output = (double.parse((output.split('_'))[0]) - double.parse((output.split('_'))[1])).toString();
                }
                if (output.contains('*')) {
                  output = (double.parse((output.split('*'))[0]) * double.parse((output.split('*'))[1])).toString();
                }
                if (output.contains('%')) {
                  output = (double.parse((output.split('%'))[0]) * double.parse((output.split('%'))[1])/100).toString();
                }
              }


            }
            if (buttonText == '-' && output == '0') {
              output = '-';
            }

            if (buttonText == '-' && output != '0'){

              if (double.tryParse(output) is double) {
                output += '-';
              } else if (double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-') || output.contains('*'))){

                if (output.contains(':')) {
                  output = (double.parse((output.split(':'))[0]) / double.parse((output.split(':'))[1])).toString();
                }
                if (output.contains('+')) {
                  output = (double.parse((output.split('+'))[0]) + double.parse((output.split('+'))[1])).toString();
                }
                if (output.contains('-', 1)){
                  output = output.replaceFirst('-', '_', 1);
                  output = (double.parse((output.split('_'))[0]) - double.parse((output.split('_'))[1])).toString();
                }
                if (output.contains('*')) {
                  output = (double.parse((output.split('*'))[0]) * double.parse((output.split('*'))[1])).toString();
                }
                if (output.contains('%')) {
                  output = (double.parse((output.split('%'))[0]) * double.parse((output.split('%'))[1])/100).toString();
                }
              }
            }
            if (buttonText == '*' && output != '0'){
              if (double.tryParse(output) is double) {
                output += '*';
              } else if (double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-') || output.contains('*'))){
                if (output.contains(':')) {
                  output = (double.parse((output.split(':'))[0]) / double.parse((output.split(':'))[1])).toString();
                }
                if (output.contains('+')) {
                  output = (double.parse((output.split('+'))[0]) + double.parse((output.split('+'))[1])).toString();
                }
                if (output.contains('-', 1)){
                  output = output.replaceFirst('-', '_', 1);
                  output = (double.parse((output.split('_'))[0]) - double.parse((output.split('_'))[1])).toString();
                }
                if (output.contains('*')) {
                  output = (double.parse((output.split('*'))[0]) * double.parse((output.split('*'))[1])).toString();
                }
                if (output.contains('%')) {
                  output = (double.parse((output.split('%'))[0]) * double.parse((output.split('%'))[1])/100).toString();
                }
              }
            }
            if (buttonText == ':'){
              if (double.tryParse(output) is double) {
                output += ':';
              }
              else if (double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-') || output.contains('*'))){
                if (output.contains(':')) {
                  output = (double.parse((output.split(':'))[0]) / double.parse((output.split(':'))[1])).toString();
                }
                if (output.contains('+')) {
                  output = (double.parse((output.split('+'))[0]) + double.parse((output.split('+'))[1])).toString();
                }
                if (output.contains('-', 1)){
                  output = output.replaceFirst('-', '_', 1);
                  output = (double.parse((output.split('_'))[0]) - double.parse((output.split('_'))[1])).toString();
                }
                if (output.contains('*')) {
                  output = (double.parse((output.split('*'))[0]) * double.parse((output.split('*'))[1])).toString();
                }
                if (output.contains('%')) {
                  output = (double.parse((output.split('%'))[0]) * double.parse((output.split('%'))[1])/100).toString();
                }
              }
            }
            if (buttonText == '%'){
              if (double.tryParse(output) is double) {
                output += '%';
              } else if (double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-') || output.contains('*'))){
                if (output.contains('%')) {
                  output = (double.parse((output.split('%'))[0]) * double.parse((output.split('%'))[1])/100).toString();
                }
                if (output.contains(':')) {
                  output = (double.parse((output.split(':'))[0]) / double.parse((output.split(':'))[1])).toString();
                }
                if (output.contains('+')) {
                  output = (double.parse((output.split('+'))[0]) + double.parse((output.split('+'))[1])).toString();
                }
                if (output.contains('-', 1)){
                  output = output.replaceFirst('-', '_', 1);
                  output = (double.parse((output.split('_'))[0]) - double.parse((output.split('_'))[1])).toString();
                }
                if (output.contains('*')) {
                  output = (double.parse((output.split('*'))[0]) * double.parse((output.split('*'))[1])).toString();
                }
              }
            }
            if (buttonText == ','){
              if (int.tryParse(output) is int) {
                output += '.';
              } else if (double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-') || output.contains('*'))){
                output += '.';
              }

            }
            if (buttonText == '1'){
              if (output != '0') {
                output += '1';
              }
              if (output == '0') {
                output = '1';
              }
            }
            if (buttonText == '2'){
              if (output != '0') {
                output += '2';
              }
              if (output == '0') {
                output = '2';
              }
            }
            if (buttonText == '3'){
              if (output != '0') {
                output += '3';
              }
              if (output == '0') {
                output = '3';
              }
            }
            if (buttonText == '4'){
              if (output != '0') {
                output += '4';
              }
              if (output == '0') {
                output = '4';
              }
            }
            if (buttonText == '5'){
              if (output != '0') {
                output += '5';
              }
              if (output == '0') {
                output = '5';
              }
            }
            if (buttonText == '6'){
              if (output != '0') {
                output += '6';
              }
              if (output == '0') {
                output = '6';
              }
            }
            if (buttonText == '7'){
              if (output != '0') {
                output += '7';
              }
              if (output == '0') {
                output = '7';
              }
            }
            if (buttonText == '8'){
              if (output != '0') {
                output += '8';
              }
              if (output == '0') {
                output = '8';
              }
            }
            if (buttonText == '9'){
              if (output != '0') {
                output += '9';
              }
              if (output == '0') {
                output = '9';
              }
            }
            if (buttonText == '0'){
              if (output != '0') {
                output += '0';
              }
              if (output == '0') {
                output = '0';
              }
            }
            if (buttonText == '00'){
              if (output != '0') {
                output += '00';
              }
              if (output == '0') {
                output = '00';
              }
            }
            if (buttonText == 'C') {
              output = '0';
            }
            if (buttonText == '<-'){
              if (output.length == 1){
                output = '0';
              }
              if (output.length > 1) {
                output = output.substring(0, output.length - 1);
              }
            }
            if (buttonText == '=' && double.tryParse(output[output.length-1]) is double && (output.contains('%') || output.contains(':') || output.contains('+') || output.contains('-') || output.contains('*'))){
              if (output.contains(':')) {
                output = (double.parse((output.split(':'))[0]) / double.parse((output.split(':'))[1])).toString();
              }
              if (output.contains('+')) {
                output = (double.parse((output.split('+'))[0]) + double.parse((output.split('+'))[1])).toString();
              }
              if (output.contains('-', 1)){
                output = output.replaceFirst('-', '_', 1);
                output = (double.parse((output.split('_'))[0]) - double.parse((output.split('_'))[1])).toString();
              }
              if (output.contains('*')) {
                output = (double.parse((output.split('*'))[0]) * double.parse((output.split('*'))[1])).toString();
              }
              if (output.contains('%')) {
                output = (double.parse((output.split('%'))[0]) * double.parse((output.split('%'))[1])/100).toString();
              }
            }
            if (double.tryParse(output) is double && int.tryParse(output) is! int && double.tryParse(output) != 0 && output != '-') {
              output = removeTrailingZeros(output);
            }
            if (double.tryParse(output) == 0 && !(output.contains('.')) && output != '-') {
              output = '0';
            }
          });},
          child: Text(
            buttonText,
            style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white
            ),
          )
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Single Calculator'), backgroundColor: Colors.black),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width, height: 286, padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          decoration: const BoxDecoration(image: DecorationImage(
          image: AssetImage('assets/pic2.jpg'),
          fit: BoxFit.fill,
        ),),
        child:  Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(left: 30, top: 60, right: 30, bottom: 120),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(
                  width: 5,
                  color: Colors.blueAccent
              ),//                   <--- border width here
              image: const DecorationImage(
                image: AssetImage('assets/pic3.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: DefaultTextStyle(
            style: const TextStyle(fontSize: 50, color: Colors.indigo),
            child: Text(output),
        ))
      ),
        Container(
            height: MediaQuery.of(context).size.height*.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pic1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Table(
                  border: TableBorder.all(
                      color: Colors.blueAccent,
                      width: 1.5
                  ),
                  columnWidths: const {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(1),
                    2: FlexColumnWidth(1),
                    3: FlexColumnWidth(1),
                  },
                  children: [
                    TableRow(children: [
                      buildButton("C", 1, Colors.black26),
                      buildButton("%", 1, Colors.black26),
                      buildButton("<-", 1, Colors.black26),
                      buildButton(":", 1, Colors.black26),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.black26),
                      buildButton("8", 1, Colors.black26),
                      buildButton("9", 1, Colors.black26),
                      buildButton("*", 1, Colors.black26),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.black26),
                      buildButton("5", 1, Colors.black26),
                      buildButton("6", 1, Colors.black26),
                      buildButton("-", 1, Colors.black26),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.black26),
                      buildButton("2", 1, Colors.black26),
                      buildButton("3", 1, Colors.black26),
                      buildButton("+", 1, Colors.black26),
                    ]),
                    TableRow(children: [
                      buildButton("00", 1, Colors.black26),
                      buildButton("0", 1, Colors.black26),
                      buildButton(",", 1, Colors.black26),
                      buildButton("=", 1, Colors.black26),
                    ]),
                  ],
                )
            )
        ),
      ])
    );
  }
}


