import 'package:flutter/material.dart';

void main() => runApp(MaterialApp( //use material design features on scene, using root widget
  home: FlutterApp1(), //get widget tree on scene from stateless widget
));

class FlutterApp1 extends StatefulWidget { //stateless widget have constant behaviour, doesn't change after it's been created
  @override
  _FlutterApp1State createState() => _FlutterApp1State();
}

class _FlutterApp1State extends State<FlutterApp1> {
  int lvl = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold( //widget that allow to create layout, main body of the scene
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar( //app bar on top
        title: Text('Title of the app in appBar!'), //title text in app bar
        centerTitle: true, //center title
        backgroundColor: Colors.blueGrey[800], //change def color
        elevation: 0.0, //remove shadow at the bottom of app bar
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() { //update state and trigger scene refresh
            lvl += 1;
            if(lvl > 5){
              lvl = 0;
            }
          });
        },
        child: Icon(
          Icons.add,
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),//add padding Left Top Right Bottom
        child: Column(//set column widget
          crossAxisAlignment: CrossAxisAlignment.start, //alignment to the left by X in COLUMN
          children: [
            Center( //center units
              child: CircleAvatar( //circle image
                backgroundImage: AssetImage('assets/girla1.png'), //image path
                radius: 40.0, //size of the image
              ),
            ),
            Divider( //set divider line
              height: 60.0, //height of space, not line height
              color: Colors.blueGrey[800],
            ),
            Text(
              'NAME: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 8.0),//add empty container to add space between
            Text(
              'Sergejs: ',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 4.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CURRENT LEVEL: ',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '$lvl',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 4.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  size: 20.0,
                  color: Colors.deepOrangeAccent,
                ),
                SizedBox(width: 10.0),
                Text(
                    'email@email.com',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




