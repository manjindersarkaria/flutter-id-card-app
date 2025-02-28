import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: const NinjaCard(),

  ));
}

class NinjaCard extends StatefulWidget{
  const NinjaCard({Key? key}) : super(key: key);
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
 // Add 'const' here
  int level = 10;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My Ninja ID', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500
        )),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: ()=>{
            setState(() {
              level +=1;
            })
          },
          backgroundColor: Colors.grey[800],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
          child: Icon(Icons.add,color: Colors.white),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/man.png'),
                radius: 60.0,
              ),
            ),
            Divider(height: 60.0,color:Colors.grey[800],),
            Text('NAME', style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w500
            )) ,
            SizedBox(height: 10.0,),
            Text('Manjinder', style: TextStyle(
              color: Colors.amber[200],
              letterSpacing: 2.0,
              fontWeight: FontWeight.w500,
              fontSize: 28.0
            )),
            SizedBox(height: 10.0,),
            Text('CURRENT NINJA LEVEL', style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w500
            )) ,
            SizedBox(height: 10.0,),
            Text('$level', style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2.0,
                fontWeight: FontWeight.w500,
                fontSize: 28.0
            )),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                Icon(Icons.email, color:Colors.grey[400]),
                SizedBox(width: 10.0,),
                Text('maninja@ninja.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 2.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),

    );
  }
}


