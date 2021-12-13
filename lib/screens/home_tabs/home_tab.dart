import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/api_manager/api_manager.dart';
import 'package:movies/models/popular_response.dart';
import 'package:movies/theme_app/themeApp.dart';
import 'package:movies/widgets/home_widgets/Recomended_Widet.dart';
import 'package:movies/widgets/home_widgets/Releases_Widget.dart';
import 'package:movies/widgets/home_widgets/popular_widget.dart';

class HomeTab extends StatelessWidget{
  static const String routeName = 'home';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              FutureBuilder<Popular_response>(
                future: ApiManager.apiLoadPopular(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    //PopularWidget(snapshot.data.results[1] ??[]);
                    return Text(snapshot.data.results[1].title,style: TextStyle(color: Colors.white,fontSize: 30),);
                  } else if (snapshot.hasError) {
                    return Center(child: Text('${snapshot.error}',style: TextStyle(color: Colors.white,fontSize: 30),));
                  }
                  // By default, show a loading spinner.
                  return Center(child: const CircularProgressIndicator());
                },
              ),

              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 8) ,
                height: 200,
                decoration: BoxDecoration(
                  color: MyThemeData.darkgray
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('New Releases'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ReleasesWidget(
                                iconBokemark: 'assets/bookmark.png',
                                imageUrl: 'assets/test.png',

                              ),
                            );
                        },
                          itemCount: 5,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.symmetric(vertical: 8) ,
                height: 240,
                decoration: BoxDecoration(
                    color: MyThemeData.darkgray
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text('Recomended'),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RecomendedWidet(
                                iconBokemark: 'assets/bookmark.png',
                                imageUrl: 'assets/test.png',
                                title: 'aaaaaa',
                                date: 'aaaaaaa',
                                likes: '7.5',
                              ),
                            );
                          },
                          itemCount: 5,

                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

      ),
    );
  }

}