import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  String content = '';
  String author = '';
  bool isLoading = false;

  void getQuotes() async {
    setState(() {
      isLoading = true;
    });
    try {
      final response = await http.get(
        Uri.parse('http://api.quotable.io/random'),
      );
      if (response.statusCode == 200) {
        final quotesData = jsonDecode(response.body);
        updateUI(quotesData);
      } else {
        SnackBar(content: Text(response.body));
      }
    } catch (e) {
      SnackBar(content: Text('$e'));
    } finally {
      isLoading = false;
    }
  }

  void updateUI(dynamic quotesData) {
    setState(() {
      if (quotesData == null) {
        content = '';
        author = '';
      } else {
        content = quotesData['content'];
        author = quotesData['author'];
      }
    });
  }

  @override
  void initState() {
    super.initState();
    getQuotes();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromARGB(255, 251, 183, 56),
         appBar: AppBar(
            title: const Text('Aplikasi Daily Tasks'),
            backgroundColor: const Color.fromARGB(255, 214, 146, 20),
          ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(height: 30.0),
                        Center(
                          child: Container(
                            color: const Color.fromARGB(255, 175, 91, 2),
                            child: Text(
                              'Quotes of the day',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        isLoading
                            ? Padding(
                              padding: EdgeInsets.only(top: 70.0),
                              child: CircularProgressIndicator(
                                color: const Color.fromARGB(255, 175, 91, 2),
                              ),
                            )
                            : Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30.0,
                              ),
                              child: Container(
                                height: 150.0,
                                width: 300.0,
                                color: const Color.fromARGB(255, 175, 91, 2),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        content.isNotEmpty
                                            ? content
                                            : 'Loading...',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      const SizedBox(height: 30.0),
                                      Text(
                                        author.isNotEmpty
                                            ? '- $author'
                                            : '- Unknown',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                      ],
                    ),
                  )
            ),
          ],
        ),
      ),
    );
  }
}