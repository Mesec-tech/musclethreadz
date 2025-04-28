import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:musclethreadz/utils/Dimensions.dart';
import 'package:musclethreadz/widgets/BigText.dart';
import 'package:musclethreadz/widgets/IconAndText.dart';
import 'package:musclethreadz/widgets/SmallText.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  PageController pageController = PageController(viewportFraction: 0.8);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.height120;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        print("Curren page value is " + _currentPageValue.toString());
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: Dimensions.productGridHeight,
          width: double.infinity,
          decoration: BoxDecoration(
              //color: Colors.red,
              ),
          child: PageView.builder(
            controller: pageController,
            itemCount: 4,
            itemBuilder: (context, position) {
              return _buildProductCard(position);
            },
          ),
        ),

        //Abstand zum DotsIndicator
        SizedBox(
          height: Dimensions.height10,
        ),

        new DotsIndicator(
          dotsCount: 4,
          position: _currentPageValue,
          decorator: DotsDecorator(
            activeColor: Colors.black,
            size: Size.square(Dimensions.width10),
            activeSize: Size(Dimensions.width20, Dimensions.width10),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(int index) {
    return Container(
      margin: EdgeInsets.only(
        right: Dimensions.width20,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          //Product Image
          Container(
            height: _height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              //color: Colors.grey,
              image: DecorationImage(
                image: AssetImage("assets/image/hoodie.png"),
              ),
            ),
          ),

          //abstand zum Produkt Text
          SizedBox(
            height: Dimensions.height10,
          ),

          //Produkt Text
          BigText(
            text: "Basic Hoodie",
            isBold: true,
          ),
          SizedBox(
            height: Dimensions.height10,
          ),

          //Preis Text und sterne
          Container(
            padding: EdgeInsets.only(
                left: Dimensions.width20, right: Dimensions.width20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Preis Text
                BigText(
                  text: "\$ 49.99",
                  color: Colors.grey[600],
                  size: Dimensions.font16,
                  isBold: true,
                ),

                IconAndText(
                    icon: Icons.star,
                    text: "4.9",
                    iconColor: Colors.yellow.shade700),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
