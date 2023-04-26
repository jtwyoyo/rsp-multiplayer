import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class GameScreenMultiplayer extends StatefulWidget {
  @override
  _GameScreenMultiplayerState createState() => _GameScreenMultiplayerState();
}

class _GameScreenMultiplayerState extends State<GameScreenMultiplayer> {
  final DatabaseReference _databaseReference = FirebaseDatabase.instance
      .ref("rsp-database-default-rtdb%asia-southeast1%firebasedatabase%app");

  String _playerSelection = '';
  String _opponentSelection = '';
  String _gameResult = '';

  @override
  void initState() {
    super.initState();

    _databaseReference.child('player2').onValue.listen((event) {
      final pselection = event.snapshot.value as String?;
      if (pselection != null && mounted) {
        setState(() {
          _playerSelection = pselection;
        });

        // Calculate the game result.
        _calculateGameResult();
      }
    });

    // Listen to changes in the opponent's selection.
    _databaseReference.child('player1').onValue.listen((event) {
      final selection = event.snapshot.value as String?;
      if (selection != null && mounted) {
        setState(() {
          _opponentSelection = selection;
        });

        // Calculate the game result.
        _calculateGameResult();
      }
    });
  }

  void _calculateGameResult() {
    if (_playerSelection == _opponentSelection) {
      if (mounted)
        setState(() {
          _gameResult = "It's a tie!";
        });
    } else if (_playerSelection == 'Rock' && _opponentSelection == 'Scissors' ||
        _playerSelection == 'Paper' && _opponentSelection == 'Rock' ||
        _playerSelection == 'Scissors' && _opponentSelection == 'Paper') {
      if (mounted)
        setState(() {
          _gameResult = 'You win!';
        });
    } else {
      if (mounted)
        setState(() {
          _gameResult = 'You lose!';
        });
    }
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
              'Your Selection:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              _playerSelection,
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Opponent\'s Selection:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              _opponentSelection.isNotEmpty ? _opponentSelection : 'Waiting...',
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Text(
              _gameResult.isNotEmpty ? _gameResult : 'Result:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
