import 'package:flutter/material.dart';
import 'package:rsp/main_menu.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isDarkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SwitchListTile(
              title: Text('Dark mode'),
              value: _isDarkModeEnabled,
              onChanged: (value) {
                setState(() {
                  _isDarkModeEnabled = value;
                  _setThemeMode();
                });
              },
            ),
            SizedBox(height: 12),
            ElevatedButton(
              child: Text('Back To Menu'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  void _setThemeMode() {
    if (_isDarkModeEnabled) {
      // Set dark theme.
      final themeData = ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.grey[900],
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
          ),
        ),
      );
      _updateTheme(themeData);
    } else {
      // Set light theme.
      final themeData = ThemeData.light().copyWith(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.black,
          ),
          bodySmall: TextStyle(
            color: Colors.black,
          ),
        ),
      );
      _updateTheme(themeData);
    }
  }

  void _updateTheme(ThemeData themeData) {
    final MaterialApp app = MaterialApp(
      theme: themeData,
      home: Settings(),
    );

    setState(() {
      // Replace current app with new app with updated theme.
      runApp(app);
    });
  }
}
