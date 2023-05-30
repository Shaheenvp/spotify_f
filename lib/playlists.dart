import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class play extends StatelessWidget {
  const play({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:    ListView.separated(
          itemBuilder: (context,index){
            return  ListTile(
              leading: Icon(CupertinoIcons.double_music_note),
              title: Row(
                children: [
                  Text('Way back home'),
                   Padding(
                     padding: const EdgeInsets.only(left: 60),
                     child: Text('2:15',style: TextStyle(color: Colors.black54,fontSize: 15),),
                   )
                ],
              ), 
              subtitle: Text('Shaun Mendes'),
              trailing: Icon(Icons.favorite_border_outlined),
            );

          }, separatorBuilder: (context,index){
        return Divider();
      }, itemCount: 2),
    );
  }
}
