import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music/model.dart';
class c4 extends StatefulWidget {
  const c4({Key? key}) : super(key: key);

  @override
  State<c4> createState() => _c4State();
}

class _c4State extends State<c4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: 200,
        child: ListView.builder(
            itemCount: tabmodel.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return   Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: AssetImage('assets/${tabmodel[index]['img']}'),fit: BoxFit.cover)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 110),
                    child: Container(
                      height: 40,
                      width: 200,
                      color: Colors.white60,
                      child: Center(child: Text('${tabmodel[index]['name']}',style: TextStyle(fontWeight: FontWeight.w700),)),
                    ),
                  )
                ],
                ),
              );
            }),
      )

    );
  }
}
