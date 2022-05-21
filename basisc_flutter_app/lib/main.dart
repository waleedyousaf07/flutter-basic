import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),

      // Widget: Expanded
      body: Row(
        children: [
          Expanded(flex: 3, child: Image.asset('assets/space1.jpg')),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.cyan,
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.pinkAccent,
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.amberAccent,
              child: Text('3'),
            ),
          ),
        ],
      ),

      // Widget: Column / Row
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   crossAxisAlignment: CrossAxisAlignment.end,
      //   children: [
      //     Row(
      //       children: [
      //         Text('hello'),
      //         Text('world'),
      //       ],
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(20),
      //       child: Text('inside container'),
      //     ),
      //     Container(
      //       color: Colors.orangeAccent,
      //       padding: EdgeInsets.all(30),
      //       child: Text('inside container'),
      //     ),
      //     Container(
      //       color: Colors.pinkAccent,
      //       padding: EdgeInsets.all(40),
      //       child: Text('inside container'),
      //     )
      //   ],
      // ),

      // // Widget: Row
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('Heyy U!!!'),
      //     IconButton(
      //       onPressed: () {
      //         print('You clicked!');
      //       },
      //       icon: Icon(Icons.airport_shuttle),
      //       color: Colors.orange,
      //     ),
      //     Container(
      //       color: Colors.cyan,
      //       padding: EdgeInsets.all(30),
      //       child: Text('inside container'),
      //     )
      //   ],
      // ),

      // Widget: Padding
      // body: Padding(
      //   padding: EdgeInsets.all(20),
      //   child: Text('Heyyy!!'),
      // ),

      // Container
      // body: Container(
      //   padding: EdgeInsets.all(20),
      //   margin: EdgeInsets.all(16),
      //   color: Colors.grey[400],
      //   child: Text('Heyyy!!'),
      // ),

      // basic widgets
      // body: Center(
      //   // Widget: Text
      //   // child: Text(
      //   //   'Hello ninjas!',
      //   //   style: TextStyle(
      //   //     fontSize: 20.0,
      //   //     fontWeight: FontWeight.bold,
      //   //     fontFamily: 'IndieFlower',
      //   //   ),
      //   // ),

      //   // Widget: Image
      //   // child: Image(
      //   //   image: AssetImage('assets/space3.jpg'),
      //   // ),
      //   // child: Image(
      //   //   image: NetworkImage('https://images.unsplash.com/photo-1501862700950-18382cd41497?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=519'),
      //   // ),
      //   // child: Image.network('https://images.unsplash.com/photo-1501862700950-18382cd41497?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=519'),

      //   // Widget: Icon
      //   child: Icon(
      //     Icons.airport_shuttle,
      //     color: Colors.lightBlue,
      //     size: 50.0,
      //   ),

      //   // child: IconButton(
      //   //   onPressed: () {
      //   //     print('You clicked!');
      //   //   },
      //   //   icon: Icon(Icons.alternate_email),
      //   //   color: Colors.orange,
      //   // ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => {},
      //   backgroundColor: Colors.red[600],
      //   child: const Text('+'),
      // ),
    );
  }
}
