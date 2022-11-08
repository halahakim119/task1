import 'package:flutter/material.dart';
import 'package:task1/dummy_data.dart';
import 'package:task1/models/task3_instagram/single_user_post_info.dart';
import 'package:task1/screens/task3_instagram/profile_screen.dart';

class HalaProfile extends StatelessWidget {
  DummyData user = DummyData();
  late List users = user.users_data();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:ProfileScreen(
          
                username: users[i].username,
                profilePicture: users[i].profilePicture,
                followersNum: users[i].followersNum,
                followingNum: users[i].followingNum,
                postsNum: users[i].postsNum,
                postInfo: [
                  SingleUserPostInfo(
                      description: users[i].postInfo![0].description,
                      image: users[i].postInfo![1].image)
                ],
              ),
        
    
    );
  }
}
