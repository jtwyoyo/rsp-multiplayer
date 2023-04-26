import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:rsp/game_screen_multiplayer.dart';

class PreGameMultiplayer extends StatefulWidget {
  @override
  _PreGameMultiplayerState createState() => _PreGameMultiplayerState();
}

class _PreGameMultiplayerState extends State<PreGameMultiplayer> {
  final DatabaseReference _databaseReference = FirebaseDatabase.instance
      .ref("rsp-database-default-rtdb%asia-southeast1%firebasedatabase%app");

  String _playerSelection = '';

  void _updatePlayerSelection(String selection) {
    setState(() {
      _playerSelection = selection;
    });
  }

  void _startGame() {
    // if(_databaseReference.child('player1') == 1)
    // // Save the player's selection to the database and navigate to the game screen.
    _databaseReference.child('player2').set(_playerSelection);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => GameScreenMultiplayer(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rock Paper Scissors - Multiplayer'),
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
                    _updatePlayerSelection('Rock');
                  },
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  child: Text('Paper'),
                  onPressed: () {
                    _updatePlayerSelection('Paper');
                  },
                ),
                SizedBox(width: 12),
                ElevatedButton(
                  child: Text('Scissors'),
                  onPressed: () {
                    _updatePlayerSelection('Scissors');
                  },
                ),
              ],
            ),
            SizedBox(height: 24),
            ElevatedButton(
              child: Text('Start Game'),
              onPressed: _playerSelection.isEmpty ? null : _startGame,
            ),
          ],
        ),
      ),
    );
  }
}
