import 'package:anttrbah/qustion_answer/answer_qus.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

Answer answer = Answer();
class QustionController extends GetxController with SingleGetTickerProviderMixin {
  AnimationController _animationController;
  Animation _animation;
  Animation get animation => this._animation;


  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this);
    _animation = Tween<double>(begin: 1, end: 0).animate(_animationController)
      ..addListener(() {
        update();
      });
      _animationController.forward().whenComplete(() => answer);
    super.onInit();
  }
}
