
import 'package:flutter/material.dart';
import 'package:movies/theme_app/themeApp.dart';

class ReleasesWidget extends StatelessWidget {
  String imageUrl;
  String iconBokemark;
  ReleasesWidget({@required this.imageUrl, @required this.iconBokemark});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Image.asset('assets/test.png'),
          InkWell(child: Image.asset(iconBokemark))
        ],
      ),

    );
  }
}
