import 'package:flutter/material.dart';
class ExplorePage extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      "title": "Google Project Management: Professional Certificate",
      "description": "Learn the fundamentals of project management and how to apply them in your career.",
    },
    {
      "title": "Google IT Support: Professional Certificate",
      "description": "Gain the skills you need to succeed in an entry-level IT job.",
    },
    {
      "title": "Google UX Design: Professional Certificate",
      "description": "Design impactful user experiences for a variety of digital products.",
    },
    {
      "title": "Google Data Analytics: Professional Certificate",
      "description": "Gain job-ready skills in data analytics, including data cleaning and visualization.",
    },
    {
      "title": "Google Digital Marketing & E-commerce: Professional Certificate",
      "description": "Learn how to develop digital marketing strategies and e-commerce skills.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Explore", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            margin: EdgeInsets.symmetric(vertical: 8),
            color: Colors.white,
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                courses[index]['title']!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              subtitle: Text(
                courses[index]['description']!,
                style: TextStyle(color: Colors.grey[600]),
              ),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black54),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
