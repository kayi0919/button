import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'TextButton';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

/// stateless widget that the main application instantiates
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        const SizedBox(height: 30),
        const SizedBox(height: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('Disabled'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Enable'),
            ),
            TextButton(
              onPressed: () {},
              style: ButtonStyle(

                backgroundColor: MaterialStateProperty.all(
                  Colors.blue),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white),
              ),
              child: const Text("Gradient"),
              ),
          ],
        )
      ],
      )
    );
  }
}