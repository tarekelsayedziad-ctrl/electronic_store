import 'package:electronic_store/constants.dart';
import 'package:electronic_store/models/product.dart';
import 'package:electronic_store/widgets/details/product_image.dart';
import 'package:flutter/material.dart';

import 'color_dot.dart';

class DetailsBody extends StatelessWidget {

  final Product product;

  const DetailsBody({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: .start,
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*1.5),
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Center(child: ProductImage(size: size,image: product.image,)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    ColorDot(fillColor: kTextLightColor,
                    isSelected: true,),
                    ColorDot(fillColor: Colors.blue,
                      isSelected: false,),
                    ColorDot(fillColor: Colors.red,
                      isSelected: false,)

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                child: Text(product.title,
                style: Theme.of(context).textTheme.headlineSmall,),
              ),
              Text("السعر: ${product.price}",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: kSecondaryColor,
              ),),
              SizedBox(
                height: kDefaultPadding,
              )

            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultFontSize/2),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultFontSize*1.5,
            vertical: kDefaultFontSize/2
          ),
          child: Text(product.description,
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,

          ),),
        )
      ],
    );
  }
}

