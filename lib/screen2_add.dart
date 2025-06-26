import 'package:flutter/material.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                padding: EdgeInsets.all(20),
                child: Text(
                  'Add Tasks',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
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
                    decoration: InputDecoration(hintText: 'Tambahkan Task',border: OutlineInputBorder(borderSide: BorderSide.none,),),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(20),
                child: ElevatedButton(
                  child: Icon(Icons.add, size: 30, color: Colors.grey),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
