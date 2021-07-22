import 'package:anttrbah/control/qan.dart';
import 'package:anttrbah/widget/consentis.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';


class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red[800], width: 3),
          borderRadius: BorderRadius.circular(50),
        ),
        child: GetBuilder<QustionController>(
            init: QustionController(),
            builder: (controller) {
              return Stack(
                children: <Widget>[
                  LayoutBuilder(builder:(context,constraints)=>
                   
                   Container(
                      width:  constraints.maxWidth * controller.animation.value,
                      decoration: BoxDecoration(
                          color: Colors.red[900],
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ),
                  Positioned.fill(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:kDefaultPadding/2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${ (controller.animation.value*10).round()}ثانية",
                          style: TextStyle(fontSize: 22,color: Colors.white),
                        ),
                        Icon(Icons.alarm, size: 25,color: Colors.white,)
                      ],
                    ),
                  ))
                ],
              );
            }),
      ),
    );
  }
}
