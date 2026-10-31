import 'package:electronic_store/constants.dart';
import 'package:electronic_store/models/product.dart';
import 'package:electronic_store/widgets/details/details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: CupertinoContextMenu.kBackgroundColor,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back),color: kPrimaryColor ,padding: EdgeInsets.only(right: kDefaultPadding),),
      title: Text("رجوع", style: Theme.of(context).textTheme.bodySmall),
    );
  }
}


