import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _noteController = TextEditingController();
  List<String> _savedNotes = [];

  @override
  void initState() {
    super.initState();
    _loadSavedNotes();
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  Future<void> _loadSavedNotes() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedNotes = prefs.getStringList('bloco_de_notas') ?? [];
    });
  }

  Future<void> _saveNote() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _savedNotes.add(_noteController.text);
    await prefs.setStringList('bloco_de_notas', _savedNotes);
    _loadSavedNotes();
    _noteController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bloco de Notas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _noteController,
              decoration: InputDecoration(
                hintText: 'Digite sua nota...',
                border: OutlineInputBorder(),
              ),
              maxLines: null, // Permite várias linhas de texto
            ),
            SizedBox(height: 16), // Espaçamento entre o campo de texto e o botão
            ElevatedButton(
              onPressed: () {
                _saveNote();
              },
              child: Text('Salvar'),
            ),
            SizedBox(height: 16), // Espaçamento entre o botão e a lista de notas
            Text(
              'Notas salvas:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8), // Espaçamento entre a label e a lista de notas
            Expanded(
              child: ListView.builder(
                itemCount: _savedNotes.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_savedNotes[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
