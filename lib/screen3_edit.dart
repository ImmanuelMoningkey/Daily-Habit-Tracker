import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 251, 183, 56),
          appBar: AppBar(
            title: const Text('Aplikasi Daily Tasks'),
            backgroundColor: const Color.fromARGB(255, 214, 146, 20),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    'Edit Tasks',
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5),
                    padding: EdgeInsets.all(20.0),
                    height: 70,
                    width: 300,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2),
                      color: const Color.fromARGB(255, 175, 91, 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(hintText: 'Edit Task'),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 100,
                              vertical: 20,
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.delete,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.symmetric(
                              horizontal: 50,
                              vertical: 20,
                            ),
                          ),
                          onPressed: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.edit,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
