import 'package:flutter/material.dart';

import '../../constants.dart';


class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.size, required this.image});
  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(

      margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        alignment: Alignment.bottomCenter, // تم تعديلها لتكون في المنتصف (أو Alignment.topCenter لرفعها أكثر)
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            width: size.width * 0.75,
            height: size.width * 0.75,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ); // (قم بلصق الكود هنا Ctrl + V);
  }
}