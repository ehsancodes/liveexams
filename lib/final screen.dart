import 'package:flutter/material.dart';
import 'livetst.dart';



class ProductDetails extends StatelessWidget {
  final String productName;

  const ProductDetails(this.productName);

  // get counter => CounterScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen-2'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(top: 60)),
                Text("Total:  ", style: TextStyle(fontSize: 24),),
                Text(productName, style: TextStyle(fontSize: 24),),
              ],
            ),
            ElevatedButton(onPressed: () {
            }, child: Text('Back')),
          ],
        ),
      ),
    );
  }
}