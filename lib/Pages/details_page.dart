import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String title;  // Define a final variable for title

  const DetailsPage({super.key, required this.title});  // Accept title in the constructor

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),  // Use the title from widget
      ),
      body: Center(
        child: Text(
          'Details for: ${widget.title}',  // Display title in the body
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
