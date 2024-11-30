import 'package:flutter/material.dart';
import '../Pages/details_page.dart';
import '../component/course_detail_card.dart';

class CourseListPage extends StatelessWidget {
  final String title;

  CourseListPage({required this.title});

  final List<Map<String, String>> courses = [
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'IT & SOFTWARE',
      'count': '10',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'UI/UX Design',
      'count': '5',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'title': 'Big Data',
      'count': '14',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body:
    Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView.builder(
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseDetailCard(
              imagePath: courses[index]['image']!,
              courseTitle: courses[index]['title']!,
              courseCode: courses[index]['count']!,
              instituteName: 'Institute XYZ',
              onClick: () => _handleCardClick(context, index),
            );
          },
        ),
    )
      );
  }

  void _handleCardClick(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsPage(title: courses[index]['title']!),
      ),
    );
  }
}
