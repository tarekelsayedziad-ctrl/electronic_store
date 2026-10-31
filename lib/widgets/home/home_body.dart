import 'package:electronic_store/constants.dart';
import 'package:electronic_store/models/product.dart';
import 'package:electronic_store/screens/details_screen.dart';
import 'package:electronic_store/widgets/home/product_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: kDefaultPadding / 2),
          Expanded(
            child: Stack(
              children: [
                // الخلفية البيضاء أو الملونة بزوايا دائرية
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),
                // بطاقة المنتج (Card)
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) => ProductCard(
                    ItemIndex: index,
                    product: products[index],
                    press: () {
                      // التصحيح هنا: استخدام MaterialPageRoute وانتقال صحيح
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                             product: products[index],
                          ),
                        ),
                      ); // إضافة الفاصلة المنقوطة
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}