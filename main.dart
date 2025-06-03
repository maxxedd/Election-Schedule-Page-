import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Election Schedule Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(50, 74, 178, 255),
        ),
      ),
      home: const MyHomePage(title: 'Election Schedule Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'Schedule of Elections',
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(15),
              width:
                  MediaQuery.of(context).size.width *
                  0.95, // or any percentage you want
              height: 150,
              decoration: BoxDecoration(color: Colors.blue.shade100),
              child: Column(
                /*  child: Text(
              'Schedule of Elections',
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),*/
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 40,
                        color: Color.fromARGB(255, 82, 81, 81),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Upcoming Timeline:',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),

                  Text(
                    '• Registration\n'
                    '• Voting Starts\n'
                    '• Voting Ends',
                    style: TextStyle(fontSize: 18),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 35),

            Container(
              width:
                  MediaQuery.of(context).size.width *
                  0.95, // or any percentage you want
              height: 150,
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.how_to_reg,
                    size: 50,
                    color: Color.fromARGB(255, 82, 81, 81),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Registration Period',
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'March 1 - March 31',
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.how_to_vote,
                        size: 50,
                        color: Color.fromARGB(255, 82, 81, 81),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Voting Starts',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'May 12',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.event_busy,
                        size: 50,
                        color: Color.fromARGB(255, 82, 81, 81),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Voting Ends',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'May 19',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Set to 1 to highlight Dashboard
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
