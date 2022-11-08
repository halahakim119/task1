import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task1/models/task3_instagram/single_user_post_info.dart';


class Post extends StatelessWidget {
  String username;
  String? profilePicture =
      'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif';
  int? postsNum;
  List<SingleUserPostInfo>? postInfo;
  Post(
      {
      required this.username,
      this.profilePicture,
      required this.postsNum,
      required this.postInfo
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
              const SizedBox(width: 10),
              CachedNetworkImage(
                height: 30,
                width: 30,
                imageUrl: '$profilePicture',
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(username, style:const TextStyle(fontWeight: FontWeight.bold)),
            ]),
            const Icon(Icons.more_vert)
          ],
        ),
        const SizedBox(height: 15),
        Container(
          color: Colors.amber,
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: CachedNetworkImage(
            imageUrl: '${postInfo![0].image}',
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                    Icon(Icons.favorite_border),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.message_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.near_me_outlined)
                  ]),
                  const Icon(Icons.more_horiz),
                  const Icon(Icons.label_important_outline_sharp),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                      children: const [
                        Icon(Icons.person),
                        SizedBox(width: 10),
                        Text("liked by"),
                        Text(
                          " me, hala, sura",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 20,
                width: double.infinity,
                child: Text(
                  overflow: TextOverflow.ellipsis,
                  '${postInfo![0].description}postInfo![0].dostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo!ostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo!ostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo!ostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo!escriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].descriptionpostInfo![0].description'),
              )
            ],
          ),
        )
      ],
    );
  }
}
