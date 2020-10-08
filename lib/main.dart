import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: BibekCard(),
    ));

class BibekCard extends StatefulWidget {
  @override
  _BibekCardState createState() => _BibekCardState();
}

class _BibekCardState extends State<BibekCard> {

  int bibekLevel= 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Bibek ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            bibekLevel+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
              backgroundImage:   AssetImage("assets/bibek.jpg"),
                radius: 50,
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "BIBEK",
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "CURREBT BIBEK LEVEL",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "$bibekLevel",
              style: TextStyle(
                  letterSpacing: 2,
                  color: Colors.amberAccent[200],
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text("bibek@gmail.com",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 2.0,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
