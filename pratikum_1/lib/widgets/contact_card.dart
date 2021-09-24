import 'package:flutter/material.dart';
import 'package:pratikum_1/models/user.dart';
import 'package:pratikum_1/theme.dart';

class ContactCard extends StatelessWidget {
  final User users;

  ContactCard(this.users);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: greyColor,
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                        image: AssetImage(users.imageUrl), fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Container(
                    child: Text(
                      users.nama,
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              right: 10,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                color: orangeColor,
                size: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
