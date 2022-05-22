import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  late String bgImage;
  late Color bgColor;

  @override
  Widget build(BuildContext context) {
    try {
      data = ModalRoute.of(context)!.settings.arguments == null
          ? data
          : ModalRoute.of(context)!.settings.arguments as Map;
      bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
      bgColor = (data['isDayTime'] ? Colors.blue : Colors.indigo[700])!;
    } catch (e) {
      data = {};
    }
    print(data);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: Icon(
                    Icons.edit_location,
                    size: 24.0,
                    color: Colors.grey[300],
                  ),
                  label: Text(
                    'Change Location',
                    style: TextStyle(
                      color: Colors.grey[300],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 2,
                        color: Colors.grey[300],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66,
                    color: Colors.grey[300],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
