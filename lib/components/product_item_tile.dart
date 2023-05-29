
import 'package:flutter/material.dart';

class ProductItemTile extends StatelessWidget {
   ProductItemTile({Key? key, required this.itemname, required this.itemprice, required this.imagepath, required this.color, required this.onPressed}) : super(key: key);

  final String itemname;
  final String itemprice;
  final String imagepath;
  final  color;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[200],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(imagepath,height: 80,),
            Text(itemname,style: TextStyle(fontSize: 24,fontFamily: 'Varela Round'),),
            MaterialButton(onPressed: onPressed,
              color: color[800],
              child: Text('\$' + itemprice,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,fontFamily: 'Varela Round'),),
            )
          ],
        ),
      ),
    );
  }
}
