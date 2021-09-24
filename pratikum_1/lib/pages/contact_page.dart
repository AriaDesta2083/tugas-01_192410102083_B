import 'package:flutter/material.dart';
import 'package:pratikum_1/models/user.dart';
import 'package:pratikum_1/theme.dart';
import 'package:pratikum_1/widgets/contact_card.dart';
import 'package:pratikum_1/widgets/contact_detail.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  late List<User> users;
  @override
  void initState() {
    users = User.getUser();
    //! Sort
    users.sort((a, b) => a.nama.compareTo(b.nama));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      appBar: AppBar(
        title: Text(
          'Daftar Contact',
          style: whiteTextStyle.copyWith(fontSize: 24),
        ),
        backgroundColor: orangeColor,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          for (var i = 0; i < users.length; i++)
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) => ContactDetail(User(
                        id: users[i].id,
                        nama: users[i].nama,
                        email: users[i].email,
                        nohp: users[i].nohp,
                        imageUrl: users[i].imageUrl)));
              },
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: ContactCard(
                  User(
                      id: users[i].id,
                      nama: users[i].nama,
                      email: users[i].email,
                      nohp: users[i].nohp,
                      imageUrl: users[i].imageUrl),
                ),
              ),
            )
        ],
      ),
    );
  }
}
