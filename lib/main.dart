import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bookmark Manager',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookmark Manager'),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text(
              "Add Bookmark",
              style: TextStyle(color: Colors.white),
            ),

            onPressed: () {
              // Implement bookmark button action here
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return
                    AlertDialog(
                    title: Text('Add Bookmark'),
                    content: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Titel',)
                    ),

                    actions: [
                      TextButton (
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Save'),
                        onPressed: () {
                          // Implement save bookmark action here
                          Navigator.of(context).pop();

                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Column(
          children: [
      Card(
      child: ListTile(
      title: Text('Category A'),
      onTap: () {
        // Action when Category A is tapped
      },
    ),
    ),
    Card(
    child: ListTile(
    title: Text('Category B'),
    onTap: () {
    // Action when Category B is tapped
    },

      ),
    )
          ]
      )
    );
  }
}
class CategoryCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  CategoryCard({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
        title: Text(title),
    trailing: TextButton(
    child: Text('Details'),
    onPressed: onTap,
    )
    ),
    );
  }}
