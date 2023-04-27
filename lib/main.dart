import 'package:flutter/material.dart';
import 'package:idea_application/Pages/Home_Content/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
    // accentColor: Colors.blue,
    // Other colors here
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      // theme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final TextEditingController _controller = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage( )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _controller,
                        decoration: InputDecoration(
                          hintText: 'Enter your name here',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                        
                        ),
                      ),
                    ),
                    const SizedBox(width:30),
                    
                     IconButton(
                     icon: const Icon(Icons.arrow_forward),
                     onPressed: (){ _incrementCounter();},
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
