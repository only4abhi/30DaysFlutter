import 'package:codepur/utils/MyRouter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://scontent.fccu27-2.fna.fbcdn.net/v/t39.30808-6/277117331_7228545067187636_4843031717830531766_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=ct-9H35-KTIAX8Emkwo&_nc_ht=scontent.fccu27-2.fna&oh=00_AT_1m5oHX16Yp8wiLkmE3BDQdag2PEZsslGQ7nK_EBSMEg&oe=62C1DB65";
    return Drawer(
      child: Container(
        color: Colors.redAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Abhishek & Rikta",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  accountEmail: Text("abhi.mail@gmal.com",style:TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),

                )
            ),
            ListTile(
              onTap:() {Navigator.pushNamed(context, MyRouter.homeRoute);},
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
        ListTile(
          onTap:() {Navigator.pushNamed(context, MyRouter.aboutRoute);},
          leading: Icon(
            CupertinoIcons.profile_circled,
            color: Colors.white,

          ),
          title: Text(
            "Profile",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.mail,
            color: Colors.white,
          ),
          title: Text(
            "Email me",
            textScaleFactor: 1.2,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
          ],

        ),
      ),
    );

  }
}
