import 'package:flutter/material.dart';
import 'package:movies/models/popular_response.dart';

class searchItem extends StatelessWidget {
  List<Results> results;
  int index;

  searchItem(this.results, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Image.network('https://www.themoviedb.org/t/p/w220_and_h330_face${results[index].posterPath}',height: 180,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(results[index].title,style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,),
                Text(results[index].releaseDate,style: TextStyle(color: Colors.white),overflow: TextOverflow.ellipsis,maxLines: 2,),
              ],
            ),
          )

        ],
      ),
    );
  }
}
