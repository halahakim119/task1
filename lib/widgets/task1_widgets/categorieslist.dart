import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoriesList extends StatelessWidget {
  List categories;

  CategoriesList(this.categories);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          width: 110,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          // margin: const EdgeInsets.all(5),
          child: Stack(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: '${categories[index].imageURL}',
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
                    '${categories[index].title}',
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
      itemCount: categories.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          width: 20,
        );
      },
    );
  }
}
