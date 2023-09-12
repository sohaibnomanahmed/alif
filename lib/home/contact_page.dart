import 'package:alif/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  String _name = '';
  String _email = '';
  String _message = '';

  ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: const InputDecoration(hintText: 'Name'),
                keyboardType: TextInputType.name,
                autofocus: true,
                onChanged: (value) => _name = value,
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(hintText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
                onChanged: (value) => _name = value,
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                    hintText: 'Please write a message...'),
                autofocus: true,
                onChanged: (value) => _name = value,
                keyboardType: TextInputType.multiline,
                minLines: 8,
                maxLines: 8,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {}, child: const Text("Send Feedback"))
            ],
          ),
        ),
      ),
    );
  }
}
