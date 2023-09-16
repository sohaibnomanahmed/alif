import 'dart:math';

import 'package:alif/gsheets_api.dart';
import 'package:alif/home/widgets/footer.dart';
import 'package:alif/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String _name = '';
  String _email = '';
  String _message = '';

  bool _isLoading = false;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          scale: 7,
          fit: BoxFit.none,
          image: AssetImage("assets/images/back.png"),
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 800),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 20),
                    Text("Kontakt oss",
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20),
                    const Text(
                        "Send oss spørsmål eller henvendelser ved å bruke skjemaet under. Feltene med * symbol foran seg er påkrevd."),
                    const SizedBox(height: 30),
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(hintText: 'Navn*'),
                      keyboardType: TextInputType.name,
                      autofocus: true,
                      onChanged: (value) => setState(() => _name = value),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(hintText: 'Epost*'),
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      onChanged: (value) => setState(() => _email = value),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                          hintText: 'Vennligst skriv en melding her...*'),
                      autofocus: true,
                      onChanged: (value) => setState(() => _message = value),
                      keyboardType: TextInputType.multiline,
                      minLines: 8,
                      maxLines: 8,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: _isLoading ||
                                (_name.isEmpty ||
                                    _email.isEmpty ||
                                    _message.isEmpty)
                            ? null
                            : () async {
                                setState(() {
                                  _isLoading = true;
                                });
                                await GSheetsAPi.insertMessage(
                                    [_name, _email, _message]);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text("Takk for din tilbakemelding!"),
                                  backgroundColor: Colors.teal,
                                ));
                                nameController.clear();
                                emailController.clear();
                                messageController.clear();
                                setState(() {
                                  _name = '';
                                  _email = '';
                                  _message = '';
                                  _isLoading = false;
                                });
                              },
                        child: _isLoading
                            ? const CircularProgressIndicator()
                            : const Text("Send"))
                  ],
                ),
              ),
            ),
          ),
          const Spacer(),
          const Footer()
        ],
      ),
    );
  }
}
