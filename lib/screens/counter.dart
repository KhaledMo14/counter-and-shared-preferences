import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: ChangeNotifierProvider(
    create: (context) => CounterProvider(),
    child: Counter(),
  )));
}

class CounterProvider extends ChangeNotifier {
  int count = 0;
  void increment() {
    count = count + 1;
    notifyListeners();
  }

  void decrement() {
    if (count > 0) {
      count = count - 1;
    }
    notifyListeners();
  }

  void reset() {
    count = 0;
    notifyListeners();
  }
}

class Counter extends StatefulWidget {
  @override
  _Counter createState() => _Counter();
}

class _Counter extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CounterProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Counter")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("click on the button "),
          Text(
            provider.count.toString(),
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  provider.increment();
                },
                child: Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  provider.reset();
                },
                child: Icon(Icons.refresh),
              ),
              FloatingActionButton(
                onPressed: () {
                  provider.decrement();
                },
                child: Icon(Icons.remove),
              ),
            ],
          )
        ],
      )),
    );
  }
}


