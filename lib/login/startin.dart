import 'package:anttrbah/login/time_bar.dart';
import 'package:anttrbah/qustion_answer/answer_qus.dart';
import 'package:anttrbah/qustion_answer/quastion_answer.dart';

import 'package:flutter/material.dart';
Answer answer =Answer();
class Startin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text(
            'المرحلة الاولى ',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height * 12,
          width: MediaQuery.of(context).size.height * 20,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/mha.jpg'), fit: BoxFit.fill),
          ),
          child: Stack(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ProgressBar(),
                      SizedBox(
                        height: 20,
                      ),
                      Text.rich(TextSpan(
                          text: '${answer.gettitele().length}',
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              .copyWith(color: Colors.red[900]),
                          children: [
                            TextSpan(
                                text: '/${10}',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(color: Colors.white))
                          ])),
                  Quastion_Answer1(),
                     
                  ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
