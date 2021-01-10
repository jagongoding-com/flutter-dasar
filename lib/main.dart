import 'package:flutter/material.dart';

class TeksUtama extends StatelessWidget {

  final String teks1;
  final String teks2;

  TeksUtama({ this.teks1, this.teks2 });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 45,
            fontWeight: FontWeight.bold,
            color: Colors.red
          ),
        )
      ],
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      title: 'Halo Dunia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halo Dunia'),
        ),
        body: Center(
          child: TeksUtama(
            teks1: 'Halo',
            teks2: 'Dunia',
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: null,
        ),
      )
    )
  );
}
