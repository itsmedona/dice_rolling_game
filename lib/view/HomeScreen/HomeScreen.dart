import 'package:dec6_dice_asgnmnt/controller/diceController/diceController.dart';
import 'package:dec6_dice_asgnmnt/utils/ImageConstant/ImageConstant.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List diceImages = [
    ImageConstant.dice1,
    ImageConstant.dice2,
    ImageConstant.dice3,
    ImageConstant.dice4,
    ImageConstant.dice5,
    ImageConstant.dice6
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Color,
          ),
      body: Center(
        child: InkWell(
          onTap: () {
            //   Provider.of<MyController>(context).isloading == true
            //   ? Lottie.asset("aassets/images/Animation - 1701856976758.json"):
            Provider.of<diceController>(context, listen: false).generate();
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.black,
            child: Image.asset(Provider.of<diceController>(context)
                .diceImages[Provider.of<diceController>(context).randomNum]),
          ),
        ),
      ),
    );
  }
}
