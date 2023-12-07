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
  generate() async {
    isLoading = true;
    notifyListeners();
    await Future.delayed(Duration(seconds: 2)).then((value) {
      isLoading = false;
    });
    randomNum = Random().nextInt(6);
    //we uses random for generating random images for this case from the image list of dice images
    print(randomNum);
    notifyListeners();
  }
}
