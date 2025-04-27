import 'package:flutter/material.dart';
import 'package:musclethreadz/utils/Dimensions.dart';
import 'package:musclethreadz/widgets/AppIcon.dart';
import 'package:musclethreadz/widgets/BigText.dart';
import 'package:musclethreadz/widgets/Button.dart';
import 'package:musclethreadz/widgets/ProductCard.dart';
import 'package:musclethreadz/widgets/ProductGrid.dart';
import 'package:musclethreadz/widgets/SmallText.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],

      //AppBar
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false, // Entfernt den Zurück-Pfeil
        title: Align(
          alignment: Alignment.centerLeft, // Text links ausrichten
          child: Text(
            "Muscle Threadz",
            style: TextStyle(
              fontSize: Dimensions.font16 * 1.2,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.mail_outline,
              color: Colors.black,
              size: Dimensions.iconSize24,
            ),
            onPressed: () {
              // Aktion für das Mail-Icon
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: Colors.black,
              size: Dimensions.iconSize24,
            ),
            onPressed: () {
              // Aktion für das Person-Icon
            },
          ),
          SizedBox(width: Dimensions.width10), // Abstand rechts
        ],
      ),

      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Abstand zur AppBar
              SizedBox(
                height: Dimensions.height30,
              ),

              //promo banner
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(Dimensions.radius30),
                ),
                margin: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                padding: EdgeInsets.all(Dimensions.height20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        BigText(
                          text: "Get 20% off",
                          color: Colors.white,
                          size: Dimensions.font12 * 2,
                        ),
                        SizedBox(
                          height: Dimensions.height10,
                        ),
                        Button(
                          text: "Shop Now",
                          TextColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 66, 66, 66),
                          icon: Icons.arrow_forward,
                          IconSize: Dimensions.iconSize16 * 1.15,
                          IconColor: Colors.white,
                          onTap: () {},
                        ),
                      ],
                    ),

                    //Abstand zwischen Text und Icon
                    SizedBox(
                      width: Dimensions.width30,
                    ),

                    //clothing image
                    Image.asset(
                      "assets/image/sport.png",
                      width: Dimensions.width45 * 2.25,
                    ),
                  ],
                ),
              ),

              //abstand zwischen promo banner und search bar
              SizedBox(
                height: Dimensions.height30,
              ),

              //search bar
              Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height10 / 2,
                    right: Dimensions.height20,
                    left: Dimensions.height20),
                child: SearchBar(
                  hintText: "Search for products...",
                ),
              ),

              SizedBox(
                height: Dimensions.height30,
              ),

              //popular products text
              Container(
                padding: EdgeInsets.only(
                  left: Dimensions.height20,
                ),
                child: BigText(
                  text: "Popular Products:",
                  color: Colors.grey[750],
                  size: Dimensions.font12 * 1.5,
                  isBold: true,
                ),
              ),

              //abstand zwischen search bar und grid with products
              SizedBox(
                height: Dimensions.height15,
              ),

              //Grid with products
              ProductGrid(),

              SizedBox(
                height: Dimensions.height15,
              ),

              //popular products

              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
