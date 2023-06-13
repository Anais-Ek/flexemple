import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ananas CV',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'Anais Elisabeth CV'),
      routes: {
        '/experiences': (context) => const Page1(),
        '/formations': (context) => const Page2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/iconuser.png',
              width: 300,
              height: 300,
            ),
            const Text(
              'Welcome to my personal resume!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'I am Anais Elisabeth and I am your next front-end developer !',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'I am 21 years old and I live in Paris.',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'Contact me at: anaisk.elisabeth@gmail.com',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 50.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/formations');
              },
              child: const Text(
                'My formations',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
            const SizedBox(height: 25.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/experiences');
              },
              child: const Text(
                'My experiences',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My experiences'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40.0),
            Image.asset(
              'assets/work.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 40.0),
            const Text(
              'My experiences',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'Front-end Developper (apprenticeship) - AURA/QUALYCLOUD - 2020/2023 ',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'Administrative registration agent - UNIVERSITÉ PARIS CITÉ - 2020',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My formations'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40.0),
            Image.asset(
              'assets/school.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 40.0),
            const Text(
              'My formations',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Quicksand',
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 50.0),
            const Text(
              'Bachelor Coding & Innovation - IIM - 2022/2023',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
            const SizedBox(height: 25.0),
            const Text(
              'BTS Système Numériques option IR - FENELON SUP - 2020/2022',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
