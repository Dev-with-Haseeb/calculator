
import 'package:calculator/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

var userInput = '';
var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 70),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(userInput, style: TextStyle(color: Colors.white, fontSize: 30),),
                      SizedBox(height: 15,),
                      Text(result, style: TextStyle(color: Colors.white, fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Row(
                    children: [
                      MyButton(
                        title: 'AC',
                        OnPress: (){
                          userInput = '';
                          result = '';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: 'DEL',
                        OnPress: (){
                          userInput = userInput.substring(0, userInput.length - 1);
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '%',
                        OnPress: (){
                          userInput += '%';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '/',
                        MyColor: Colors.orange,
                        OnPress: (){
                          userInput += '/';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '7',
                        OnPress: (){
                          userInput += '7';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '8',
                        OnPress: (){
                          userInput += '8';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '9',
                        OnPress: (){
                          userInput += '9';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: 'x',
                        MyColor: Colors.orange,
                        OnPress: (){
                          userInput += 'x';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '4',
                        OnPress: (){
                          userInput += '4';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '5',
                        OnPress: (){
                          userInput += '5';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '6',
                        OnPress: (){
                          userInput += '6';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '-',
                        MyColor: Colors.orange,
                        OnPress: (){
                          userInput += '-';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '1',
                        OnPress: (){
                          userInput += '1';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '2',
                        OnPress: (){
                          userInput += '2';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '3',
                        OnPress: (){
                          userInput += '3';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '+',
                        MyColor: Colors.orange,
                        OnPress: (){
                          userInput += '+';
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      MyButton(
                        title: '0',
                        OnPress: (){
                          userInput += '0';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '.',
                        OnPress: (){
                          userInput += '.';
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: 'DEL',
                        OnPress: (){
                          userInput = userInput.substring(0, userInput.length - 1);
                          setState(() {
                            
                          });
                        },
                      ),
                      MyButton(
                        title: '=',
                        MyColor: Colors.orange,
                        OnPress: (){
                          equalPress();
                          setState(() {
                            
                          });
                        },
                      ),
                    ],
                  ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }

void equalPress (){
  String FinalUserInput = userInput.replaceAll('x', '*');
  Parser p = Parser();
Expression expression = p.parse(FinalUserInput);
ContextModel contextModel = ContextModel();
double eval = expression.evaluate(EvaluationType.REAL, contextModel);
result = eval.toString();
}
}