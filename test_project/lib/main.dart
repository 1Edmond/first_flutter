import 'package:flutter/material.dart';
import 'package:test_project/views/add_demande.dart';

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
      title: 'Best Favor',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(
        title: 'Best Favor',
      ),
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
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text('Demandes'),
                ),
                Tab(
                  child: Text('Acceptations'),
                ),
                Tab(
                  child: Text('Refus'),
                ),
              ],
            ),
            centerTitle: true,
            title: Text(
              widget.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          body: TabBarView(children: [
            Container(),  
            Container(),
            Container(),
          ]),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddDemandePage()));
            },
            tooltip: 'Increment',
            child: const Icon(Icons.edit),
          ),
        ));
  }
}
