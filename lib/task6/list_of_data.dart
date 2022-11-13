import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';

import 'package:task1/task6/model/task6.dart';
import 'package:task1/task6/widgets/user_ifo.dart';

class ListOfData extends StatelessWidget {
  const ListOfData({super.key, required this.data});

  final List<Task6> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
            child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => UserInfo(
                      avatar: data[index].avatar,
                      firstName: data[index].firstName,
                      lastName: data[index].lastName,
                      email: data[index].email,
                      phoneNumber: data[index].phoneNumber,
                      streetAddress: data[index].address!.streetAddress,
                      dateOfBirth: data[index].dateOfBirth,
                    )));
          },
          leading: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: CachedNetworkImage(
              imageUrl: '${data[index].avatar}',
            ),
          ),
          title: Text(data[index].firstName.toString()),
        ));
      },
    );
  }
}
