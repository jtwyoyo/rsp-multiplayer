import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'pre_game.dart';
import 'pre_game_multiplayer.dart';
import 'setting.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rock Paper Scissors'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Player VS Computer'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreGame()),
                );
              },
            ),
            SizedBox(height: 12),
            ElevatedButton(
              child: Text('Player VS Player'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PreGameMultiplayer()),
                );
              },
            ),
            SizedBox(height: 12),
            ElevatedButton(
              child: Text('Options'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            SizedBox(height: 12),
            ElevatedButton(
              child: Text('Exit'),
              onPressed: () {
                // Add your exit logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
