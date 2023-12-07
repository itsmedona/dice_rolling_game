import 'dart:math';

import 'package:dec6_dice_asgnmnt/utils/ImageConstant/ImageConstant.dart';
import 'package:flutter/material.dart';

class diceController with ChangeNotifier {
  int randomNum = 0;
  bool isLoading = false;

  List diceImages = [
    ImageConstant.dice1,
    ImageConstant.dice2,
    ImageConstant.dice3,
    ImageConstant.dice4,
    ImageConstant.dice5,
    ImageConstant.dice6,
  ];
  generate() {
    isLoading = true;
    notifyListeners();
    randomNum = Random().nextInt(6);
    notifyListeners();
  }
}
