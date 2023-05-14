import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                )
            ),
            label: Text('Search',style: TextStyle(color: Colors.white),),
            suffixIcon: Icon(Icons.search_rounded,color: Colors.white,),
            border: OutlineInputBorder(),
            hintText: 'Search'
        )
    );
  }
}
