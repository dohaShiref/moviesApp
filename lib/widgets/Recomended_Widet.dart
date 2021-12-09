
import 'package:flutter/material.dart';
import 'package:movies/theme_app/themeApp.dart';

class RecomendedWidet extends StatelessWidget {
   String imageUrl;
   String iconBokemark;
   String likes;
   String title;
   String date;

   RecomendedWidet({@required this.imageUrl, @required this.iconBokemark,@required this.likes,@required this.title,@required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      decoration: BoxDecoration(
        color: MyThemeData.darkgray,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 4.0,
            offset: Offset(2.0, 2.0), // shadow direction: bottom right
          )
        ],
      ),
       child: Stack(
         children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Image.asset('assets/test.png'),
               Row(children: [
                 Image.asset('assets/star.png'),
                 Text(likes)
               ],),
               Text(title,overflow: TextOverflow.ellipsis,),
               Text(date,overflow: TextOverflow.ellipsis,)

             ],
           ),
           InkWell(child: Image.asset(iconBokemark))
         ],
       ),

    );
  }
}
