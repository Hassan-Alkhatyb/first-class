import 'package:anttrbah/qustion_answer/answer_qus.dart';
import 'package:flutter/material.dart';

Answer answer = Answer();
const colorshwe = Colors.white;
const   right = Colors.green;
 const  wrong = Colors.red;
// ignore: camel_case_types
class Quastion_Answer1 extends StatefulWidget {
  @override
  _Quastion_Answer1State createState() => _Quastion_Answer1State();
}

// ignore: camel_case_types
class _Quastion_Answer1State extends State<Quastion_Answer1> {
  Color selection = colorshwe;
  Color selection1 = colorshwe;
Color selection2 =colorshwe;
Color selection3 = colorshwe;

 IconData iconshwe =  Icons.contact_support;
  IconData iconshwe1 =  Icons.contact_support;
   IconData iconshwe2 =  Icons.contact_support;
    IconData iconshwe3 =  Icons.contact_support;
IconData trueer = Icons.done;
IconData folse = Icons.close;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
          Container(
        height: 50,
        width: double.infinity,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 25), // 15
        decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Text(
          answer.gettitele(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child:GestureDetector(
                      child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            color: selection,
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${answer.getselacte(0)}',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Container(
                                height: 26,
                                width: 26,
                              
                                decoration: BoxDecoration(
                                    color: selection,
                                    
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(color: Colors.red[900])),
                                   child:Icon(iconshwe,size: 25, ),
                              ),
                            ],
                          )),
                      onTap: () {
                        
                        setState(() {
                          if (answer.getcorrectAnswer() == answer.getselacte(0)) {
                           selection= right;
                       iconshwe=trueer;
                            answer.nextquestion();
                      
                          } else {
                           selection = wrong;
                            iconshwe = folse;
                            
                          }

                          

                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: 80,
                        height: 50,
                        decoration: BoxDecoration(
                          color: selection1,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${answer.getselacte(1)}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: selection1,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red[900])),
                                   child:Icon(iconshwe1,size: 25,),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                       
                        setState(() {
                          if (answer.getcorrectAnswer() == answer.getselacte(1)) {
                           selection1 = right;
                            iconshwe1 =trueer;
                            answer.nextquestion();
                          } else {
                           selection1 = wrong;
                            iconshwe1 =folse;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color:selection2,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${answer.getselacte(2)}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                  color: selection2,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colors.red[900])),
                                   child:Icon(iconshwe2,size: 25,),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                     
                        setState(() {
                          if (answer.getcorrectAnswer() == answer.getselacte(2)) {
                            selection2 = right;
                            iconshwe2 =trueer;
                            answer.nextquestion();
                          } else {
                           selection2= wrong;
                            iconshwe2 =folse ;
                          }
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color:selection3,
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${answer.getselacte(3)}',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                            Container(
                              height: 26,
                              width: 26,
                              decoration: BoxDecoration(
                                color: selection3,
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.red[900]),
                                
                              ),
                               child:Icon(iconshwe3,size: 25,),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                       
                        setState(() {
                          if (answer.getcorrectAnswer() == answer.getselacte(3)) {
                            selection3 = right;
                            iconshwe3 =trueer;
                            answer.nextquestion();
                          } else {
                            selection3= wrong;
                            iconshwe3= folse ;
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    ]);
  }
}
