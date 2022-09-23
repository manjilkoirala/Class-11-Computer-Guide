// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:class11computer/Screen/question_answer.dart';
import 'package:class11computer/model/homepagemodel.dart';
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
      appBar: MyAppBar(title: const Text("Class 11 Computer Guid"), action: [
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
      backgroundColor: Theme.of(context).primaryColorLight,
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
        child: ListView.builder(
            itemCount: homepage.ch1.length,
            itemBuilder: (context, index) {
              return MyCard(
                index: index,
                item: homepage.ch1[index],
              );
            }),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final home item;
  final int index;
  const MyCard({super.key, required this.item, required this.index});

  @override
  Widget build(BuildContext context) {
    double md = MediaQuery.of(context).size.height;
    return SizedBox(
      height: md / 5.64,
      child: Padding(
        padding: EdgeInsets.only(top: md / 169),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => NotePage(
                          custometitle: item.chname,
                        )));
          },
          child: Card(
            elevation: 50,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(md / 42.25)),
            color: Theme.of(context).cardColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(md / 88.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        item.ch,
                        style: TextStyle(fontSize: md / 28.17),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Theme.of(context).primaryColorDark,
                    child: Padding(
                      padding: EdgeInsets.all(md / 88.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Hero(
                            tag: 'chname+$index',
                            child: Text(
                              item.chname,
                              style: TextStyle(
                                  color: Colors.white, fontSize: md / 28.17),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
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
