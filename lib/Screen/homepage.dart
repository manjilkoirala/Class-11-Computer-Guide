// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:class11computer/Screen/question_answer.dart';
import 'package:class11computer/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:share/share.dart';
import 'package:store_redirect/store_redirect.dart';
import 'package:upgrader/upgrader.dart';

import '../widgets/adhelper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_literals_to_create_immutables
      appBar: MyAppBar(title: "Class 11 Computer Guid", action: [
        Row(
          children: [
            Button(
              icon: Icons.star,
              ontap: () {
                StoreRedirect.redirect(
                    androidAppId: "com.techlearnhere.class11computer");
              },
            ),
            Button(
              icon: Icons.share,
              ontap: () {
                Share.share(
                    'https://play.google.com/store/apps/details?id=com.techlearnhere.class11computer');
              },
            ),
            Button(
              icon: Icons.info,
              ontap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text("Class 11 Computer Guide"),
                          actions: [
                            TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("OK"))
                          ],
                          content: const Text(
                              "Class 11 Computer Guide contains important notes of NEB class 11 computer.\nNotes will be updated and added regularly."),
                        ));
              },
            )
          ],
        )
      ]),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: SizedBox(
        height: getbannerAd().size.height.toDouble(),
        width: getbannerAd().size.width.toDouble(),
        child: AdWidget(
          ad: getbannerAd(),
        ),
      ),
      body: UpgradeAlert(
        upgrader: Upgrader(
            showIgnore: false,
            shouldPopScope: () => true,
            durationUntilAlertAgain: const Duration(minutes: 10)),
        child: ListView(
          children: [
            CustomListTile(
              title: '1. Computer system',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Computer System',
                            )));
              },
            ),
            CustomListTile(
              title: '2. Number system and conversion Boolean Logic',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Number System',
                            )));
              },
            ),
            CustomListTile(
              title: '3. Computer software and operating system.	',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Computer Software',
                            )));
              },
            ),
            CustomListTile(
              title: '4. Application Package (Word, Excel, Powerpoint)',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Application Package',
                            )));
              },
            ),
            CustomListTile(
              title: '5. Programming concepts and logics (C-language)',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Programming Concepts',
                            )));
              },
            ),
            CustomListTile(
              title: '6. Web Technology-I (HTML + CSS)',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Web Technology',
                            )));
              },
            ),
            CustomListTile(
              title: '7. Multimedia',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Multimedia',
                            )));
              },
            ),
            CustomListTile(
              title: '8. Information security and cyber law',
              follow: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotePage(
                              custometitle: 'Information Security',
                            )));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final title;
  final follow;

  const CustomListTile({Key? key, this.title, this.follow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Card(
        child: ListTile(
          onTap: follow,
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final IconData icon;
  var ontap;
  Button({Key? key, required this.icon, this.ontap})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: ontap,
        child: Icon(icon),
      ),
    );
  }
}
