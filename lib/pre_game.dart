import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:rsp/game_screen_computer.dart';

class PreGame extends StatelessWidget {
  final DatabaseReference _databaseReference = FirebaseDatabase.instance.ref(
      "https://rsp-database-default-rtdb.asia-southeast1.firebasedatabase.app/");

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
            Text(
              'Select Your Weapon:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Text('Rock'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GameScreen(selection: 'Rock')),
                    );
                  },
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  child: Text('Paper'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GameScreen(selection: 'Paper')),
                    );
                  },
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  child: Text('Scissors'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              GameScreen(selection: 'Scissors')),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
