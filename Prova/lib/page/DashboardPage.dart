import 'package:flutter/material.dart';
import 'package:test/page/FinishPage.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Map<String, bool> checked = {
    'Flutter': false,
    'React Native': false,
    'Kotlin': false,
    'Java': false,
    'Ionic': false,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avaliação')),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Text(
              'Quais tecnologias de desenvolvimento mobile você conhece?',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            ..._buildCheckboxes(),
            ElevatedButton(
              onPressed: () {
                List<String> selected = [];
                checked.forEach((String key, bool value) {
                  if (value) {
                    selected.add(key);
                  }
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FinishPage(selected: selected),
                  ),
                );
              },
              child: const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildCheckboxes() {
    List<Widget> checkboxes = [];
    checked.forEach((String key, bool value) {
      checkboxes.add(
        CheckboxListTile(
          title: Text(key),
          value: value,
          onChanged: (newValue) {
            setState(() {
              checked[key] = newValue ?? false;
            });
          },
        ),
      );
    });
    return checkboxes;
  }
}


