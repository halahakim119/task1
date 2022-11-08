import 'package:flutter/material.dart';
import '../../widgets/task1_widgets/recommendedlist.dart';
import '../../models/task1/recommended.dart';
import '../../widgets/task1_widgets/categorieslist.dart';
import '../../models/task1/categories.dart';
import 'package:easy_localization/easy_localization.dart';

// import '.../assets/translation/en_US.json';

class Myhomepagescreen extends StatelessWidget {
  // static const routename='/homepage';
  final List<Categories> categories = [
    Categories(
        id: 'c1',
        title: 'flight',
        imageURL:
            'https://www.gannett-cdn.com/presto/2019/06/23/USAT/c3a9f051-bd6c-4b39-b5b9-38244deec783-GettyImages-932651818.jpg?width=660&height=517&fit=crop&format=pjpg&auto=webp'),
    Categories(
        id: 'c2',
        title: 'hotel',
        imageURL:
            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
    Categories(
        id: 'c3',
        title: 'train',
        imageURL:
            'https://www.gannett-cdn.com/presto/2019/06/23/USAT/c3a9f051-bd6c-4b39-b5b9-38244deec783-GettyImages-932651818.jpg?width=660&height=517&fit=crop&format=pjpg&auto=webp'),
    Categories(
        id: 'c1',
        title: 'categorie4',
        imageURL:
            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391704.jpg?ca=6&ce=1&s=1024x768'),
    Categories(
        id: 'c1',
        title: 'categorie5',
        imageURL:
            'https://www.gannett-cdn.com/presto/2019/06/23/USAT/c3a9f051-bd6c-4b39-b5b9-38244deec783-GettyImages-932651818.jpg?width=660&height=517&fit=crop&format=pjpg&auto=webp'),
    Categories(
        id: 'c1',
        title: 'categorie6',
        imageURL:
            'https://images.unsplash.com/photo-1532264523420-881a47db012d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9'),
  ];

  final List<Recommended> recommended = [
    Recommended(
        id: 'c1',
        title: 'flight',
        imageURL:
            'https://www.gannett-cdn.com/presto/2019/06/23/USAT/c3a9f051-bd6c-4b39-b5b9-38244deec783-GettyImages-932651818.jpg?width=660&height=517&fit=crop&format=pjpg&auto=webp'),
    Recommended(
        id: 'c2',
        title: 'hotel',
        imageURL:
            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391702.jpg?ca=6&ce=1&s=1024x768'),
    Recommended(
        id: 'c3',
        title: 'train',
        imageURL:
            'https://www.gannett-cdn.com/presto/2019/06/23/USAT/c3a9f051-bd6c-4b39-b5b9-38244deec783-GettyImages-932651818.jpg?width=660&height=517&fit=crop&format=pjpg&auto=webp'),
    Recommended(
        id: 'c4',
        title: 'reco4',
        imageURL:
            'https://pix8.agoda.net/hotelImages/124/1246280/1246280_16061017110043391704.jpg?ca=6&ce=1&s=1024x768'),
    Recommended(
        id: 'c5',
        title: 'reco6',
        imageURL:
            'https://www.gannett-cdn.com/presto/2019/06/23/USAT/c3a9f051-bd6c-4b39-b5b9-38244deec783-GettyImages-932651818.jpg?width=660&height=517&fit=crop&format=pjpg&auto=webp'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: MediaQuery.of(context).size.height * 1,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.black,
                        Colors.lightBlue.shade700,
                      ],
                    ),
                  ),
                  margin: const EdgeInsets.only(
                    top: 40,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Hi, John More".tr(),
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            const Text(
                              "where are you going?",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 60,
                  child: Flexible(
                    flex: 1,
                    child: TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade200,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          hintText: 'Search location',
                          hintStyle:
                              const TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: const Icon(Icons.location_on)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: CategoriesList(categories),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Recommended",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 180,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Recommendedlist(recommended),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
