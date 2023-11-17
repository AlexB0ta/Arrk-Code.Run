import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persona_arrk/constants/colors.dart';
import 'package:persona_arrk/constants/styles.dart';
import 'package:persona_arrk/utils/widgets/custom_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { //asta se apeleaza ca sa creeeze ui
  @override
  Widget build(BuildContext context) {
    final screenWidth= MediaQuery.of(context).size.width;
    final screenHeight=MediaQuery.of(context).size.height;
    return Column(
      children: [
        getTitleWidgets(),
        addVerticalSpace(34),
        getCarAlertsWidgest(screenWidth,screenHeight/3.5),
        addVerticalSpace(34),
        getBatteryInfoWidgets(screenWidth/2),
        addVerticalSpace(34),
        getAditionalWidget()
      ],
    );

  }

  Widget getTitleWidgets() {
    return Column(
      children: [

        addVerticalSpace(24),

        const Icon(Icons.energy_savings_leaf,color: kGreenColor,size: 32),

        addVerticalSpace(10),

        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello ",style: kMediumWhiteTextStyle),
            Text('Alex',style: kMediumGreenTextStyle),
          ],
        )
      ],
    );
  }

  getCarAlertsWidgest(double screenWidth, double screenHeight) {
    return Column(
      children: [
        Container(color: kRedColor,height: screenHeight,width: screenWidth)
      ],
    );
  }

  getBatteryInfoWidgets(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(color: kYellowColor,height: 60,width: screenWidth),
        Container(padding: kSmallPaddingAll,decoration: kCircleBoxDecoration,
          child: const Icon(Icons.electric_bolt_outlined,color: kRedColor,size: 32),)
      ],
    );
  }

  getAditionalWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(padding: kSmallPaddingAll,decoration: kCircleBoxDecoration,
        child: const Icon(Icons.view_headline,color: kWhiteColor,size: 32,),),

        Container(padding: kSmallPaddingAll,decoration: kCircleBoxDecoration,
          child: const Icon(Icons.beach_access_outlined,color: kWhiteColor,size: 32,),),

        Container(padding: kSmallPaddingAll,decoration: kCircleBoxDecoration,
          child: const Icon(Icons.lock_clock,color: kWhiteColor,size: 32,),)
      ],
    );
  }

}