
import 'package:chatapp/components/product_item_tile.dart';
import 'package:chatapp/constants.dart';
import 'package:chatapp/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
          onPressed: ()=> Navigator.pushNamed(context, 'CartPage'),
        backgroundColor: Colors.black,
        child: Icon(Icons.shopping_bag),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Consumer<CartModel>(builder: (context,value,child){
              return GridView.builder(
                itemCount: value.shopItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1/1.3,
                  ),
                  itemBuilder: (context,index){
                    return ProductItemTile(
                      itemname:value.shopItems[index][0] ,
                      itemprice:value.shopItems[index][1] ,
                      imagepath: value.shopItems[index][2],
                      color:value.shopItems[index][3],
                      onPressed: () {
                        Provider.of<CartModel>(context,listen: false).addItemToCart(index);
                      },);
                  });
            },))
          ],
        ),
      ),
    );
  }
}
