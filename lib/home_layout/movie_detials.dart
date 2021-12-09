import 'package:flutter/material.dart';
import 'package:movies/theme_app/themeApp.dart';

class MovieDetials extends StatelessWidget{
  static const String routeName = 'moviedetials';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyThemeData.darkgray,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Dora and the lost city of gold',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        backgroundColor: MyThemeData.darkgray,
      ),
      body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                child: Image.asset('assets/testPhoto.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Center(child: Image.asset('assets/play-icon.png',height: 60,width: 60,)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text('Dora and the lost city of gold' ,  style: TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 15),
            child: Text('2019  PG-13  2h 7m' ,  style: TextStyle(
                color: Colors.white, fontSize: 10, ),),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 10),
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset('assets/testPhoto.png',fit: BoxFit.cover,height: 170,width: 120,),
                    ),
                    Image.asset('assets/bookmark.png',height: 40,width: 30,)
                  ],
                ),
              ),
              Expanded(child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 20,
                              width: 60,
                              child: Center(
                                child: Text('Action', style: TextStyle(
                                  color: Colors.white, fontSize: 10, )),
                              ),
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.white),
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 20,
                              width: 60,
                              child: Center(
                                child: Text('Action', style: TextStyle(
                                  color: Colors.white, fontSize: 10, )),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.white),
                              ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Container(
                              height: 20,
                              width: 60,
                              child: Center(
                                child: Text('Action', style: TextStyle(
                                  color: Colors.white, fontSize: 10, )),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                border: Border.all(color: Colors.white),
                              ),),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          height: 20,
                          width: 60,
                          child: Center(
                            child: Text('Action', style: TextStyle(
                              color: Colors.white, fontSize: 10, )),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: Colors.white),
                          ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 13.0),
                        child: Text('Having spent most of her life exploring the jungle, nothing'
                            ' could prepare Dora for her most dangerous adventure yet — high school. ',
                            style: TextStyle(
                              color: Colors.white, fontSize: 13, )),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star,color: MyThemeData.Primaty_color,size: 20,),
                          Text('7.7',
                              style: TextStyle(
                                color: Colors.white, fontSize: 18,fontWeight: FontWeight.w500 ))
                        ],
                      )
                    ],
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}