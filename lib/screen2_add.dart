import 'package:flutter/material.dart';

class Screen2Add extends StatelessWidget {
  const Screen2Add({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Aplikasi Daily Tasks'),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Add Tasks',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5),
                padding: EdgeInsets.all(20.0),
                height: 70,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Tambahkan Task'),
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Icon(Icons.add, size: 30, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
