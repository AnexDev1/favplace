import 'package:flutter/material.dart';

class NewPlace extends StatelessWidget {
  NewPlace({super.key});

  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
              child: TextField(
                controller: _textController,
                decoration: InputDecoration(
                  labelText: 'name',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      _textController.clear();
                    },
                  ),
                ),
                keyboardType: TextInputType
                    .text, // Set the keyboard type (e.g., email, number)

                onSubmitted: (text) {
                  // Handle text submission (e.g., pressing "Enter" or a button)
                  Navigator.of(context).pop(text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
