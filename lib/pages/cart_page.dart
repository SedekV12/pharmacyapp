
import 'package:chatapp/constants.dart';
import 'package:chatapp/model/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text('My Cart',style: TextStyle(fontSize: 26),),
        elevation: 0,
        centerTitle: true,
      ),
      body: Consumer<CartModel>(builder: (context,value,child){
        return Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: value.cartItems.length,
                padding: EdgeInsets.all(12.0),
                itemBuilder:(context,index){
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.green[400],
                        ),
                        child: ListTile(
                          leading: Image.asset(value.cartItems[index][2],height: 36,),
                          subtitle: Text('\$' +value.cartItems[index][1]),
                          title: Text(value.cartItems[index][0]),
                          trailing: GestureDetector(
                              onTap: () => Provider.of<CartModel>(context,listen: false).removeItemFromCart(index),
                              child: Icon(Icons.cancel)),
                        )),
                  ),
                ],
              );
            } )
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                padding: EdgeInsets.all(26),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.green[200],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total Price',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('\$'+value.calculateTotal(),style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.green.shade900),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Text('Pay Now',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ]
        );
    }
    ));
  }
}
