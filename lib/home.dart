import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/playlists.dart';
import 'package:music/tab.dart';
class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
                ],
              ),
            ),

             Padding(
               padding: const EdgeInsets.only(left: 15,top: 20 ),
               child: Text('Browse',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 220,
                width: double.infinity,
                child: tab(),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Playlists',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 300,
              width: double.infinity,
              child: play(),
            )


          ],
        ),
      ),
    );
  }
}
