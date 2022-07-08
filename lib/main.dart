import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          highlightColor: const Color(0xffF50000), //red
          backgroundColor: const Color(0xffE5E5E5), //white greyish
          primaryColor: const Color(0xffea5a03), //orange
          scaffoldBackgroundColor: const Color(0xffE5E5E5),
          textTheme: const TextTheme(
            headline1: TextStyle(
                fontSize: 20.0,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.w600),
            headline2: TextStyle(
                fontSize: 18.0,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.w600),
            headline3: TextStyle(
                fontSize: 17.0,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.normal),
            headline4: TextStyle(
                fontSize: 19.0,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.normal),
            headline5: TextStyle(
                fontSize: 21.0,
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.normal),
            headline6: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
            bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
          ),
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Color(0xffF50000)),
              elevation: 0.5,
              color: Color(0xffE5E5E5),
              centerTitle: true,
              titleTextStyle: TextStyle(
                fontFamily: 'LobsterTwo',
                fontWeight: FontWeight.w600,
                fontSize: 28,
                color: Color(0xffF50000),
              ))),
      home: const MyHomePage(title: 'Heda Saathi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final dW = MediaQuery.of(context).size.width;
    final dH = MediaQuery.of(context).size.height;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(
        child: Container(),
      ),
      appBar: AppBar(
          title: Text(
            widget.title,
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          actions: [
            Row(
              children: [
                const Icon(Icons.notifications),
                SizedBox(width: dW * 0.03),
                const Icon(Icons.search),
                SizedBox(width: dW * 0.04),
              ],
            )
          ]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
