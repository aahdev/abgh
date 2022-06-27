import 'package:flutter/material.dart';

/// ***************************************
/// PLAYERS - sub page
///
/// page to manage players (add/remove/edit)
/// ~~~~~~~~~~~~~~~~~~

class Players extends StatefulWidget {
  const Players({Key? key}) : super(key: key);

  @override
  State<Players> createState() => _PlayersState();
}

class _PlayersState extends State<Players> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spieler'),
      ),
      body: const SingleChildScrollView(
        child: Center(
          child: Text('Hier könnten die Spieler stehen.'),
        ),
      ),
    );
  }
}
