import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pratikum_1/models/user.dart';
import 'package:pratikum_1/theme.dart';

class ContactDetail extends StatelessWidget {
  final User users;

  ContactDetail(this.users);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lumutColor.withOpacity(0.9),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(users.imageUrl), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                users.nama,
                style: whiteTextStyle.copyWith(fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text(users.nohp, style: orangeTextStyle.copyWith(fontSize: 20)),
            SizedBox(
              height: 11,
            ),
            Text(users.email, style: whiteTextStyle.copyWith(fontSize: 12)),
            SizedBox(
              height: 21,
            )
          ],
        ),
      ),
    );
  }
}
