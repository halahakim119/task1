
import 'package:task1/models/task3_instagram/single_user_post_info.dart';

import '../../models/task3_instagram/user.dart';

class DummyData {
   List<User> userIfo = [
    User( id: 1,
      username: 'hala',
      profilePicture: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
      followersNum: 11,
      followingNum: 24,
      postInfo: [
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'haha',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
      ],
),
    User(id: 2,
      username: 'sura',
      profilePicture: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
      followersNum: 23,
      followingNum: 26,
      postInfo: [
        SingleUserPostInfo(
          description: 'this is a description this is a description this is a description this is a description this is a description',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'this is a description',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'this is a description this is a description this is a description',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'this is a description',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
        SingleUserPostInfo(
          description: 'this is a description',
          image: 'http://www.goodmorningimagesdownload.com/wp-content/uploads/2021/07/Facebook-Profile-Images-Wallpaper-Free.gif',
        ),
      ],
    ),
  
   
  ];


  List<User> users_data() {
    return [...userIfo];
  }


}
