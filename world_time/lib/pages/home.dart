import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<dynamic, dynamic> data = {};

  @override
  Widget build(BuildContext context) {
    try {
      data =
          ModalRoute.of(context)!.settings.arguments as Map<dynamic, dynamic>;
    } catch (e) {
      data = data;
    }
    print(data);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
                icon: const Icon(
                  Icons.edit_location,
                  size: 24.0,
                ),
                label: const Text('Change Location'),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data['location'],
                    style: const TextStyle(
                      fontSize: 20,
                      letterSpacing: 2,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                data['time'],
                style: const TextStyle(
                  fontSize: 66,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
