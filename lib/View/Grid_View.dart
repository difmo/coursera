import 'package:flutter/material.dart';
import '../component/All_Course_Card.dart';
import 'course_list_view.dart';

class CourseGridPage extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'IT & SOFTWARE',
      'count': '10',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'UI/UX Design',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Big Data',
      'count': '14',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Interview',
      'count': '51',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Masterclasses',
      'count': '454',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
    {
      'image': 'assets/images/images-removebg-preview.png',
      'title': 'Sales and Business',
      'count': '5',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CourseCard(
              imagePath: courses[index]['image']!,
              title: courses[index]['title']!,
              courseCount: courses[index]['count']!,
              onTap: () => _handleCardClick(context, courses[index]),
            );
          },
        ),
      ),
    );
  }

  void _handleCardClick(BuildContext context, Map<String, String> course) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseListPage(title: course['title']!),
      ),
    );
  }
}


