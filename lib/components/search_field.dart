import 'package:flutter/material.dart';
import 'package:runiverse/config/palette.dart';

class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: width*0.76, height: 50,
      decoration: BoxDecoration(
          color: Palette.blockColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(15)
      ),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Program",
            prefixIcon: Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15
            )
        ),
      ),
    );
  }
}
