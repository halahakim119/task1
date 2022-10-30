import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Recommendedlist extends StatelessWidget {
  List recommended;

  Recommendedlist(this.recommended);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          // margin: const EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
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
              Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Text(
                    '${recommended[index].title}',
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        );
      },
      itemCount: recommended.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 20,
        );
      },
    );
  }
}
