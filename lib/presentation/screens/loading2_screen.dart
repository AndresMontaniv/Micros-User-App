import 'package:flutter/material.dart';


class Loading2Screen extends StatelessWidget {
  const Loading2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buses'),
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.indigo,
        ),
     ),
   );
  }
}