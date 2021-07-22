import 'package:flutter/material.dart';

class StartApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.red[700],
            body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                  
                    height: MediaQuery.of(context).size.height * 0.5,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(80),
                          bottomRight: Radius.circular(80),
                        )),
                  ),
                  Column(
                     
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(height: 40,),
                      Text(
                        ' انت تربح ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.w700),
                      ),
                      Image.asset(
                        'images/antant.png',
                        height: 300,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(100),
                        child: SizedBox(
                          height: 70,

                                width: double.infinity,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0)),
                                  color: Colors.black,
                                  onPressed: () {
                                    Navigator.of(context).pushNamed('login');
                                  },
                                  child: Text(
                                    'دخول الى اللعبة',
                                    style: TextStyle(color: Colors.white, fontSize: 30),
                                  ),
                                ),),
                      ),
                  
                    ],
                  )
                ],
              ),
             
            ],
          ),
      )  );
  }
  }
  
 