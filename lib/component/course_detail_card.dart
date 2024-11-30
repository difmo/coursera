import 'package:flutter/material.dart';

class CourseDetailCard extends StatelessWidget {
  final String imagePath;
  final String courseTitle;
  final String courseCode;
  final String instituteName;
  final VoidCallback onClick; // Callback function for click action

  CourseDetailCard({
    required this.imagePath,
    required this.courseTitle,
    required this.courseCode,
    required this.instituteName,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onClick, // Handling click action
      // borderRadius: BorderRadius.circular(16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                child: Image.network(
                  imagePath,
                  width: screenWidth * 0.3,
                  height: screenWidth * 0.25,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        courseTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          // fontSize: screenWidth * 0.04, // Font size adjusts based on screen width
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        courseCode,
                        style: TextStyle(
                          color: Colors.grey,
                          // fontSize: screenWidth * 0.035, // Responsive font size
                        ),
                      ),
                      Text(
                        instituteName,
                        style: TextStyle(
                          color: Colors.grey,
                          // fontSize: screenWidth * 0.035, // Responsive font size
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
