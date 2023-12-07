import 'package:dec6_dice_asgnmnt/controller/diceController/diceController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  diceController dController = diceController();
  @override
  Widget build(BuildContext context) {
    final dProvider = Provider.of<diceController>(context);
    return Scaffold(
      backgroundColor: Color(0xff274a22),
      appBar: AppBar(backgroundColor: Color(0xff274a22)),
      body: Center(
        child: SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(dProvider.diceImages[dProvider.randomNum])),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Provider.of(context, listen: false).generate();
        },
        child: Icon(Icons.gamepad),
      ),

      /*child: InkWell(
            onTap: () {
              Provider.of<diceController>(context).isLoading == true
                  ? Lottie.asset("assets/animations/dice_rolling_lottie.json")
                  : Provider.of<diceController>(context, listen: false)
                      .generate();
            },*/
      /*child: Container(
              height: 100,
              width: 100,
              color: Colors.black,
              child: Image.asset(Provider.of<diceController>(context)
                  .diceImages[Provider.of<diceController>(context).randomNum]),
            ),*/
    );
  }
}
