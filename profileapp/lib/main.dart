import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_url_preview/simple_url_preview.dart';

void main() => runApp(MaterialApp(
      home: Profile(),
    ));

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("This is @kil !!!"),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image(
                image: AssetImage('assets/akil.jpg'),
              ),
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Akileswar",
              style: TextStyle(
                  fontFamily: 'dancingscript',
                  color: Colors.amberAccent[400],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Dept/yr",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "BE-CSE/Ist yr",
              style: TextStyle(
                  fontFamily: 'dancingscript',
                  color: Colors.amberAccent[400],
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "college",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Chennai institute of technology",
              style: TextStyle(
                  fontFamily: 'dancingscript',
                  color: Colors.amberAccent[400],
                  letterSpacing: 2.0,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              "Bio",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Just learning mobile app dev",
              style: TextStyle(
                  fontFamily: 'dancingscript',
                  color: Colors.amberAccent[400],
                  letterSpacing: 2.0,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Front end Web developer",
              style: TextStyle(
                  fontFamily: 'dancingscript',
                  color: Colors.amberAccent[400],
                  letterSpacing: 2.0,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Main goal: cybersecurity",
              style: TextStyle(
                  fontFamily: 'dancingscript',
                  color: Colors.amberAccent[400],
                  letterSpacing: 2.0,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.grey[400],
                    ),
                    TextButton(
                        onPressed: () async {
                          const url = 'mailto:akileswar2002@protonmail.com';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'could not launch $url';
                          }
                        },
                        child: Text(
                          "MAIL:akileswar2002@protonmail.com",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 10.0,
                              fontFamily: 'dancingscript'),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.usb_rounded,
                      color: Colors.grey[400],
                    ),
                    TextButton(
                        onPressed: () async {
                          const url = '/fireclasher';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'could not launch $url';
                          }
                        },
                        child: Text(
                          "GITHUB: https://github.com/fireclasher",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 10.0,
                              fontFamily: 'dancingscript'),
                        ))
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.account_box_rounded,
                      color: Colors.grey[400],
                    ),
                    TextButton(
                        onPressed: () async {
                          const url = 'https://www.linkedin.com/in/akileswar';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'could not launch $url';
                          }
                        },
                        child: Text(
                          "LINKEDIN: akileswar",
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 10.0,
                              fontFamily: 'dancingscript'),
                        ))
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
