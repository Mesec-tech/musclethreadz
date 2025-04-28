import 'package:flutter/material.dart';
import 'package:musclethreadz/utils/Dimensions.dart';
import 'package:musclethreadz/widgets/BigText.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: Dimensions.width20,
          right: Dimensions.width20,
          bottom: Dimensions.height20),
      width: Dimensions.width300,
      height: Dimensions.height150,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(Dimensions.radius20 * 1.5),
      ),
      child: Row(
        children: [
          // Product Image
          Container(
            width: Dimensions.size100,
            height: Dimensions.size100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/tshirt.png"),
              ),
            ),
          ),

          // Product Name and Price
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.width30), // Abstand zum Bild
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: "Tshirt",
                    isBold: true,
                  ),
                  BigText(
                    text: "\$ 29.99",
                    color: Colors.grey[600],
                    size: Dimensions.font16,
                    isBold: true,
                  ),
                ],
              ),
            ),
          ),

          // Heart Icon
          Container(
            margin: EdgeInsets.only(
                right: Dimensions.width10), // Abstand zum rechten Rand
            child: IconButton(
              icon: Icon(
                isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border, // Zustand prüfen
                color: isFavorite ? Colors.red : Colors.black, // Farbe ändern
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite; // Zustand umschalten
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
