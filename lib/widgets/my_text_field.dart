import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({
    super.key,
    required this.initialCity,
    required this.onCityChanged,
  });

  final String initialCity;
  final Function onCityChanged;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialCity);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: _controller,
        decoration: InputDecoration(
          labelText: "Enter a City",
          suffixIcon: IconButton(
            onPressed: () {
              widget.onCityChanged(_controller.text);
            },
            icon: Icon(Icons.search),
          ),
          border: OutlineInputBorder(),
        ),
        onSubmitted: (value) {
          widget.onCityChanged(value);
        },
      ),
    );
  }
}
