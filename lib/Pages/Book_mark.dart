import 'package:coursera/configration/App_colors.dart';
import 'package:flutter/material.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({super.key});

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}
class _BookMarkPageState extends State<BookMarkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            'Bookmark',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: AppColors.primary,
          elevation: 0,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10.0), // Shift left
                child: IconButton(
                  icon: Icon(Icons.notifications_none, size: 30),
                  color: AppColors.kariya,
                  onPressed: () {
                    // Add the action for the bell icon here
                    print('Bell icon pressed!');
                  },
                ),
              ),
            ]
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text('Welcome to the User Home Page!'),
      ),
    );
  }
}