import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text('Lottery App')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text('Your Lottery wining number is 4')),
            const SizedBox(height: 10,),
            Container(
              height: 150,
              width: 260,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(10),
              ),
              child: x == 4
                  ? Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.green,
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Congratulations you won lottery \n your winning number $x',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                  )
                  : Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        children: [
                          const Icon(
                            Icons.warning_rounded,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 10,),
                          Text(
                            'Better luck next time your number is $x\n Try again',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                  ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x = random.nextInt(8);
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
