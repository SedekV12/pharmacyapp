import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItems =[
    ["panadol","50.0","assets/panadol.jpg",Colors.yellow],
    ["congistal","60.0","assets/congistal.png",Colors.orange],
    ["paracetamoll","70.0","assets/paracitamol.jpg",Colors.blue],
    ["altroxine","80.0","assets/altroxin.jpg",Colors.brown],
  ];
  List _cartItems =[];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal(){
    double totalPrice =0;
    for(int i=0; i < _cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}