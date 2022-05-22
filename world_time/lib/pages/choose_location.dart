import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    // simulate network request
    String name = await Future.delayed(const Duration(seconds: 3), () {
      // print('Batman!');
      return 'Batman';
    });

    // simulate network request using attr from prev API
    String abilities = await Future.delayed(const Duration(seconds: 2), () {
      return 'Abilities of Batman';
    });

    print('$name - $abilities');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: const Text('Choose Location Screen'),
    );
  }
}
