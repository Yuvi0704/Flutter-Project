import 'package:flutter/material.dart';

class CourseSelectionPage extends StatefulWidget {
  @override
  _CourseSelectionPageState createState() => _CourseSelectionPageState();
}

class _CourseSelectionPageState extends State<CourseSelectionPage> {
  String? _selectedCourse;
  final List<String> _courses = ['Java', 'C++', 'Python'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select your Desired Course for your Personalised Tutor'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownButtonFormField<String>(
                  value: _selectedCourse,
                  items: _courses.map((course) {
                    return DropdownMenuItem(
                      value: course,
                      child: Text(course),
                    );
                  }).toList(),
                  hint: Text('Select a Course'),
                  onChanged: (value) {
                    setState(() {
                      _selectedCourse = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
                SizedBox(height: 20),
                if (_selectedCourse != null) ...[
                  Text(
                    'AI Tutor for $_selectedCourse',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Placeholder for AI tutor widget or logic
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Text(
                      'AI Tutor content goes here for $_selectedCourse',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.blue[900]),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 198, 223, 238),
    );
  }
}
