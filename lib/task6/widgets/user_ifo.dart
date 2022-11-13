import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String? firstName;
  final String? lastName;
  final String? avatar;
  final String? email;
  final String? phoneNumber;
  final String? streetAddress;
  final String? dateOfBirth;

  UserInfo({
    this.avatar,
    this.dateOfBirth,
    this.email,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.streetAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Row(children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: CachedNetworkImage(imageUrl: avatar!),
            ),
            Text('${firstName} ${lastName}')
          ])),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('email: ${email}'),
          Text('Date of birth: ${dateOfBirth}'),
          Text('phone number: ${phoneNumber}'),
          Text('street address: ${streetAddress}')
        ],
      )),
    );
  }
}
