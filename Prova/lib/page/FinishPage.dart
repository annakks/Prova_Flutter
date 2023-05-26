import 'package:flutter/material.dart';

class FinishPage extends StatelessWidget {
  final List<String> selected;

  const FinishPage({Key? key, required this.selected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avaliação')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: selected.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(selected[index]),
                );
              },
            ),
            SizedBox(height: 80),
            Text(
              'Informações enviadas ao servidor...',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
