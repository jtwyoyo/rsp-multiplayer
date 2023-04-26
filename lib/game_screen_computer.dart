import 'package:flutter/material.dart';
import 'dart:math';

class GameScreen extends StatefulWidget {
  final String selection;

  GameScreen({required this.selection});

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final List<String> _weapons = ['Rock', 'Paper', 'Scissors'];
  late String _computerSelection;
  late String _result;

  @override
  void initState() {
    super.initState();
    _computerSelection = _weapons[Random().nextInt(_weapons.length)];
    _result = _getResult(widget.selection, _computerSelection);
  }

  String _getResult(String userSelection, String computerSelection) {
    if (userSelection == computerSelection) {
      return 'Tie!';
    } else if ((userSelection == 'Rock' && computerSelection == 'Scissors') ||
        (userSelection == 'Paper' && computerSelection == 'Rock') ||
        (userSelection == 'Scissors' && computerSelection == 'Paper')) {
      return 'You Win!';
    } else {
      return 'Computer Wins!';
    }
  }

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
              'You Selected:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              widget.selection,
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Text(
              'Computer Selected:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12),
            Text(
              _computerSelection,
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            Text(
              _result,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              child: Text('Play Again'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
