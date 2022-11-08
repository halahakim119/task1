import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Recommendedlist extends StatelessWidget {
  List recommended;

  Recommendedlist(this.recommended);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width *0.9,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CachedNetworkImage(
                  height: 150,
                  width: 130,
                  imageUrl: '${recommended[index].imageURL}',
                  imageBuilder: (context, imageProvider) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
               Text(
                    '${recommended[index].title}',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                
              ],
            
          );
        },
        itemCount: recommended.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 15,
          );
        },
      ),
    );
  }
}
