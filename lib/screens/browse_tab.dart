import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/widgets/category_widget.dart';

class BrowseTab extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 15),
          child: Text('Browse Category ',style: TextStyle(
            color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
          ),),
        ),
        Expanded(
          child:
            GridView.count(
                crossAxisCount: 2,
               crossAxisSpacing: 4.0,
                children: List.generate(10, (index) {
                  return Center(
                    child:  CategoryWidet( CategoryName: 'Action', imagepath: 'assets/categoryPhoto.png'),
                  );
                }
                )),
        ),
      ],
    );
  }

}