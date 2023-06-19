import 'package:flutter/material.dart';

void main() {
  runApp(MyApp(
    appName: 'EhsansApp',
  ));
}

class MyApp extends StatelessWidget {

  final String appName;

  const MyApp({required this.appName});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appName,
        home: CounterScreen()
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Counter App"),),
      body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [



          Container(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Counter Value: ", style: TextStyle(fontSize: 40),),
                    Container(

                      alignment: Alignment.topRight,
                      padding: EdgeInsets.only(left: 10, right: 20),
                      child: Text(
                        counter.toString(),
                        style: const TextStyle(fontSize: 40),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {
                          counter = counter + 1;
                          setState(() {});
                        },
                        child: Icon(Icons.add),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: 10,
                    ),

                    SizedBox(
                      height: 50,
                      width: 100,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                        ),
                        onPressed: () {
                          counter = counter - 1;
                          setState(() {});
                        },
                        child: Icon(Icons.remove),
                      ),
                    ),

                  ],
                ),


              ],
            ),
          ),

        ],
      ),],),
    );
  }
}