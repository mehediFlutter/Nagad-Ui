import 'package:flutter/material.dart';

class SearchContact extends StatelessWidget {
  const SearchContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
          decoration: InputDecoration(
    
    prefixIcon: Icon(Icons.search,color:Colors.grey),
    hintText: 'Search',
    hintStyle: TextStyle(color: Colors.grey),
    border: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.grey)),
          ),
        );
  }
}
