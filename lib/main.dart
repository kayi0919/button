import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
            OutlinedButton(
              onPressed: () {},
              child: const Text('Enable'),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.yellow),
                foregroundColor: MaterialStateProperty.all(
                  Colors.black),
              ),
              child: const Text("Gradient"),
              ),
            IconButton(
              iconSize: 50,
              color: Colors.orange,
              icon: const Icon(Icons.phone_iphone),
              onPressed:(){},
            ),
            FloatingActionButton(
              onPressed: (){},
              child:const Icon(Icons.phone_iphone),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Colors.grey),
                foregroundColor: MaterialStateProperty.all(
                    Colors.black),
              ),
              child: const Icon(Icons.phone_iphone),
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('按到SnackBar!'),
                  action: SnackBarAction(
                    label: 'Toast訊息',
                    onPressed: () => Fluttertoast.showToast(
                      msg:'你按下SnackBar',
                      toastLength: Toast.LENGTH_LONG,
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 30.0),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('SnackBar'),
            ),
          ],
        )
      ],
      )
    );
  }
}