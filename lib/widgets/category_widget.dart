
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/theme_app/themeApp.dart';

class CategoryWidet extends StatelessWidget {
  String imagepath;
  String CategoryName;

  CategoryWidet({@required this.imagepath, @required this.CategoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      child: Stack(
        children: [
          Image.asset(imagepath ,fit: BoxFit.cover,height: 100,width: 150,),
          Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(52, 53, 52, 0.4),
            ),
          ),
          Center(
            child: Text(CategoryName,style: TextStyle(
              color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold
            ),),
          )
])
    );
  }
}
