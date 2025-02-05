import 'package:flutter/material.dart';
import 'package:practice_widgets/data/image_data.dart';
import 'package:practice_widgets/screens/image_cart.dart';
import 'package:practice_widgets/widgets/text_field.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: CustomText(),
        actions: const [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white70,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.table_rows_rounded,
                  color: Colors.white70,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemBuilder: (context, index) => ImageCart(
          imageData: imageList[index],
        ),
      ),
    );
  }
}
