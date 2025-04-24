import 'package:flutter/material.dart';
import 'second_page.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "screen n=1",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.teal),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (ctx) => const MySecondPage(title: "Second Page")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.teal,
              ),
              child: const Text('Next screen'),
            )
          ],
        ),
      ),
    );
  }
}
