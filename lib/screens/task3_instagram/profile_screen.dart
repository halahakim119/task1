import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task1/models/task3_instagram/single_user_post_info.dart';
import '../../models/task3_instagram/highlight.dart';

class ProfileScreen extends StatefulWidget {
  final String? username;
  String? profilePicture =
      'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif';
  final int? followingNum;
  final int? followersNum;
  final int? postsNum;
  final List<SingleUserPostInfo>? postInfo;
  ProfileScreen(
      {super.key,
      required this.username,
      this.profilePicture,
      required this.followersNum,
      required this.followingNum,
      required this.postsNum,
      required this.postInfo});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {


  List<bool> isSelected = [true, false];

  List<Highlight> highlight = [
    Highlight(id: 1, title: 'FIRST', image: 'images'),
    Highlight(id: 1, title: 'SECOND', image: 'images'),
    Highlight(id: 1, title: 'THIRD', image: 'images'),
    Highlight(id: 1, title: 'FOURTH', image: 'images'),
    Highlight(id: 1, title: 'FIFTH', image: 'images'),
    Highlight(id: 1, title: 'FIRST', image: 'images'),
    Highlight(id: 1, title: 'SECOND', image: 'images'),
    Highlight(id: 1, title: 'THIRD', image: 'images'),
    Highlight(id: 1, title: 'FOURTH', image: 'images'),
    Highlight(id: 1, title: 'FIRST', image: 'images'),
    Highlight(id: 1, title: 'SECOND', image: 'images'),
    Highlight(id: 1, title: 'THIRD', image: 'images'),
    Highlight(id: 1, title: 'FOURTH', image: 'images')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      child: CachedNetworkImage(
                        imageUrl: '${widget.profilePicture}',
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(widget.username ?? "",
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.postsNum.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Text(" Posts",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.followersNum.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Text(" follwers",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(widget.followingNum.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold)),
                    const Text(" following",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
             width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Colors.white,
                side: const BorderSide(width: 1, color: Colors.black),
              ),
              child: const Text(
                "edit profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.white),
                      child: const Icon(Icons.add),
                    ),
                    const Text("NEW")
                  ],
                ),
                SizedBox(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.amber)),
                                Text('${highlight[index].title}'),
                              ]);
                      }),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          width: 20,
                        );
                      },
                      itemCount: highlight.length),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1),
          SizedBox(
            height: 60,
            child: ToggleButtons(
              
              constraints: BoxConstraints(
                  minWidth: (MediaQuery.of(context).size.width ) / 2),
              fillColor: Colors.transparent,
              color: Colors.grey,
              selectedColor: Colors.black,
              renderBorder: false,
              isSelected: isSelected,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.grid_on),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                )
              ],
              
              onPressed: (newIndex) {
                
                setState(() {
                  for (int index = 0; index < isSelected.length; index++) {
                    if (index == newIndex) {
                      isSelected[index] = true;
                    } else {
                      isSelected[index] = false;
                    }
                  }
                  ;
                });
              },
            ),
          ),
           const Divider(thickness: 1),
          isSelected[0]
              ? GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 3,
                ),
                itemCount: widget.postsNum,
                itemBuilder: (context, index) {
                  return Container(
                    // height: 10,
                    // width: 10,
                    color: Colors.amber,
                  );
                },
              )
              : GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                  crossAxisCount: 2,
                ),
                itemCount: widget.postsNum,
                itemBuilder: (context, index) {
                  return Container(
                    // height: 10,
                    // width: 10,
                    color: Colors.amber,
                  );
                },
              ),
        ],
      ),
    );
  }
}
