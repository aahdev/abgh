import 'package:flutter/material.dart';
import 'pages/players.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // remove DEBUG banner
      debugShowCheckedModeBanner: false,
      title: 'aBGH',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'a Board Game Helper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

// VARIABLES
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
// VARIABLES
  int _currentIndex = 0;

// FUNCTIONS/METHODS

// DESIGN
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // change drag area of drawer to open (0-1 of screen width)
      drawerEdgeDragWidth: MediaQuery.of(context).size.width * .18,
      endDrawer: const Drawer(),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              image: AssetImage('assets/images/domino.jpg'),
              fit: BoxFit.cover,
              opacity: .4,
            ),
          ),
          width: double.infinity,
          // color: _currentIndex == 0
          //     ? Colors.amber.shade300
          //     : Colors.purple.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Warum braucht children ein <Widget>?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('aButton'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return const Players();
                  }));
                },
                child: const Text('Spieler'),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Regeln',
            icon: Icon(Icons.book),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
