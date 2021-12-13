
import 'package:flutter/material.dart';
import 'package:movies/models/popular_response.dart';

class PopularWidget extends StatelessWidget {

  Results results;

  PopularWidget(this.results);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 190,
          width: double.infinity,
          child: Image.asset('assets/testPhoto.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Center(child: Image.asset('assets/play-icon.png',height: 60,width: 60,)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 100,bottom: 15),
          child: Stack(
            children: [
              Container(
                child: Image.asset('assets/Image.png',fit: BoxFit.cover,height: 170,width: 120,),
              ),
              Image.asset('assets/bookmark.png',height: 40,width: 30,)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 150,top: 200),
          child: Text(results.title ,  style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 220,left: 150),
          child: Text('2019  PG-13  2h 7m' ,  style: TextStyle(
            color: Colors.white, fontSize: 10, ),),
        ),
      ],
    );
  }
}
