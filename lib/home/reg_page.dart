import 'dart:math';

import 'package:alif/gsheets_api.dart';
import 'package:alif/home/widgets/footer.dart';
import 'package:alif/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class RegPage extends StatefulWidget {
  final String courseImage;
  final String courseName;
  final String description;
  final String price;
  final String level;
  const RegPage(
      {super.key,
      required this.courseImage,
      required this.courseName,
      required this.description,
      required this.price,
      required this.level});

  @override
  State<RegPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<RegPage> {
  String _name = '';
  String _email = '';
  String _phone = '';
  String _gender = '';
  String _arabicLevel = '';
  String _age = '';
  String _studies = '';

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
      child: SingleChildScrollView(
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
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).colorScheme.secondary),
                              onPressed: () => Navigator.of(context).pop(),
                              icon: const Icon(Icons.arrow_back)),
                          const SizedBox(width: 20),
                          Flexible(
                            child: Text(
                                "Registrer deg for ${widget.courseName}",
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 100,
                        backgroundImage: AssetImage(widget.courseImage),
                      ),
                      const SizedBox(height: 10),
                      Text("Beskrivelse: ${widget.description}"),
                      const SizedBox(height: 10),
                      Text("Pris: ${widget.price}"),
                      //const SizedBox(height: 10),
                      Text("Nivå: ${widget.level}"),
                      const SizedBox(height: 10),
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
                        decoration:
                            const InputDecoration(hintText: 'Mobilnummer*'),
                        autofocus: true,
                        onChanged: (value) => setState(() => _phone = value),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      Text("Kjønn*"),
                      RadioListTile(
                        title: Text("Mann"),
                        value: "mann",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        title: Text("Kvinne"),
                        value: "kvinne",
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value.toString();
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: const InputDecoration(
                            hintText:
                                'Har du erfaring med arabisk fra før? hvis Ja, gjerne legg til hvor mye*'),
                        onChanged: (value) =>
                            setState(() => _arabicLevel = value),
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: const InputDecoration(hintText: 'Alder'),
                        onChanged: (value) => setState(() => _age = value),
                        keyboardType: TextInputType.number,
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        decoration: const InputDecoration(
                            hintText: 'Nåværende studie/jobb*'),
                        onChanged: (value) => setState(() => _studies = value),
                        keyboardType: TextInputType.text,
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: _isLoading ||
                                  (_name.isEmpty ||
                                      _email.isEmpty ||
                                      _phone.isEmpty ||
                                      _gender.isEmpty ||
                                      _arabicLevel.isEmpty ||
                                      _age.isEmpty ||
                                      _studies.isEmpty)
                              ? null
                              : () async {
                                  setState(() {
                                    _isLoading = true;
                                  });
                                  await GSheetsAPi.insertAttende([
                                    widget.courseName,
                                    widget.level,
                                    widget.price,
                                    _name,
                                    _email,
                                    _phone,
                                    _gender,
                                    _arabicLevel,
                                    _age,
                                    _studies
                                  ]);
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(const SnackBar(
                                    content: Text(
                                        "Takk for din påmelding! du vil snart høre fra oss"),
                                    backgroundColor: Colors.teal,
                                  ));
                                  Navigator.of(context).pop();
                                },
                          child: _isLoading
                              ? const CircularProgressIndicator()
                              : const Text("Registrer"))
                    ],
                  ),
                ),
              ),
            ),
            const Footer()
          ],
        ),
      ),
    );
  }
}
