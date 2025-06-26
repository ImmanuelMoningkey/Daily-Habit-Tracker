import 'package:flutter/material.dart';
import 'package:project_flutter/quotes_screen.dart';
import 'package:project_flutter/screen2_add.dart';
import 'package:project_flutter/screen3_edit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 251, 183, 56),
        appBar: AppBar(
          title: const Text('Daily Habit Tracker'),
          backgroundColor: const Color.fromARGB(255, 214, 146, 20),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Daily Tasks',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 5,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 91, 2),
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 8,
                              ),
                              icon: Icon(Icons.remove_circle_outline),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                            Expanded(
                              child: Text(
                                'makan api',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 24,
                              ),
                              icon: Icon(Icons.edit),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 5,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 91, 2),
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 8,
                              ),
                              icon: Icon(Icons.remove_circle_outline),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                            Expanded(
                              child: Text(
                                'minum kopi',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 24,
                              ),
                              icon: Icon(Icons.edit),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 5,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 91, 2),
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 8,
                              ),
                              icon: Icon(Icons.check_circle),
                              color: Colors.black,
                              onPressed: () {},
                            ),
                            Expanded(
                              child: Text(
                                'mandi sambil joging',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                            IconButton(
                              padding: EdgeInsetsDirectional.symmetric(
                                horizontal: 24,
                              ),
                              icon: Icon(Icons.edit),
                              color: Colors.black,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EditScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20.0),
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 20,
                        ),
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 91, 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                              icon: Icon(
                                Icons.check_circle_outline,
                                color: const Color.fromARGB(255, 54, 225, 77),
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Daily Streak',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => QuotesScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 50,
                          vertical: 20,
                        ),
                        height: 70,
                        width: 300,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 175, 91, 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.book,
                              color: const Color.fromARGB(255, 54, 225, 77),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Motivation For You',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 15.0,
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
