import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GamePage(),
    );
  }
}

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Column(
            children: <Widget>[
              Container(
                height: data.size.height / 1.50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 5, //
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    width: 300.00,
                    height: 300.00,
                    child: Image.asset(
                      'assets/capture.jpg',
                      // fit: BoxFit.cover
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      PowerButton(),
                      PowerButton(),
                      PowerButton(),
                      PowerButton(),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      MainButton(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainButton(),
                          MainButton(),
                        ],
                      ),
                      MainButton(),
                    ],
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.blue,
                        shape: CircleBorder(),
                        child: SizedBox(
                          width: 100,
                          height: 100, //customisable size of 'button'
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PowerButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      shape: CircleBorder(),
    );
  }
}

class MainButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.blue,
      shape: CircleBorder(),
      child: SizedBox(
        width: 50,
        height: 50,
      ),
    );
  }
}
