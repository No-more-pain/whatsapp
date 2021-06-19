import 'package:flutter/material.dart';

import 'Pages/CallsPage.dart';
import 'Pages/MessagesPage.dart';
import 'Pages/StatusPage.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin {
  static const List<Tab> mytabs = <Tab>[
    Tab(
      text: 'Status',
    ),
    Tab(
      text: 'Calls',
    ),
    Tab(
      text: 'Messages',
    ),
  ];
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      vsync: this,
      length: mytabs.length,
    );

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(

            centerTitle: false,
            title: Text('Whatsapp'),
            backgroundColor: Colors.green,
            bottom: TabBar(



              indicatorColor: Colors.grey,
              indicatorWeight: 5,

              controller: _tabController,
              tabs: mytabs,
            ),
            actions: [

              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
          body: TabBarView(
            controller: _tabController,
            children:  <Widget>[Status(), Calls(), Messages()],

          ),
    ),
    );
  }
}


///mytabs.map((Tab tab) {
//               final String label = tab.text!.toLowerCase();
//               return Center(
//                 child: Text(
//                   'This is the $label tab',
//                   style: const TextStyle(fontSize: 36),
//                 ),
//               );
//             }).toList(),