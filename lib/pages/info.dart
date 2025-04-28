import 'package:flutter/material.dart';
import 'package:musclethreadz/utils/Dimensions.dart';
//import 'package:musclethreadz/utils/Dimensions.dart';
import 'package:musclethreadz/widgets/BigText.dart';
import 'package:musclethreadz/widgets/Button.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 38, 38),
      body: Padding(
        padding: EdgeInsets.all(Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions.height30,
            ),

            // Muscle Threadz Text
            BigText(
              text: "Muscle Threadz",
              color: Colors.white,
              isBold: true,
              size: Dimensions.font16 * 2,
            ),

            SizedBox(
              height: Dimensions.height20 * 2,
            ),

            //Gym Icon
            Padding(
              padding: EdgeInsets.all(Dimensions.width20 * 3),
              child: Image.asset(
                "assets/image/gym.png",
                //width: Dimensions.width45 * 4,
              ),
            ),

            SizedBox(
              height: Dimensions.height15 * 2.5,
            ),

            //title
            Text(
              "Welcome to Muscle Threadz",
              style: TextStyle(
                fontSize: Dimensions.font26,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            //subtitle
            Text(
              "Your ultimate fitness companion, here you can find the best Clothing and Accessories for you",
              style: TextStyle(
                fontSize: Dimensions.font16,
                color: Colors.white,
              ),
            ),

            SizedBox(
              height: Dimensions.height20 * 2,
            ),

            //get started button
            Button(
              text: "Get Started",
              icon: Icons.arrow_forward,
              IconColor: Colors.white,
              TextColor: Colors.white,
              backgroundColor: Color.fromARGB(255, 65, 63, 63),
              IconSize: Dimensions.iconSize16 * 1.3,
              onTap: () {
                //go to home page
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}
