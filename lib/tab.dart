import 'package:flutter/material.dart';
import 'package:music/tabdata.dart';
class tab extends StatefulWidget {
  const tab({Key? key}) : super(key: key);

  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                // borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  TabBar(
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontWeight: FontWeight.w700,fontSize: 15),
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
                      tabs: [
                        Tab(text: 'Moods',),
                        Tab(text: 'Artsts',),
                        Tab(text: 'podcasts',),

                      ]),
                  Expanded(child: TabBarView(children: [
                    c4(),
                    c4(),
                    c4(),
                  ]))
                ],
              )

          ),
        )
    );
  }
}

