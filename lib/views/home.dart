import 'package:flutter/material.dart';
import 'package:flutter_blogapp/views/widgets/blog_widgets.dart';
// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: CircleAvatar(
                child: Icon(
                  Icons.person,
                  // color: Colors.black,
                ),
              ),
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Blogs',
                  style: TextStyle(
                      // color: Colors.amber,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5)),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                // height: 60,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[100],
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search Blog',
                      hintStyle:
                          TextStyle(color: Colors.grey[500], fontSize: 15),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const BlogWidget(color: Colors.grey),
              const SizedBox(
                height: 20,
              ),
              const BlogWidget(color: Colors.blue),
              const SizedBox(
                height: 20,
              ),
              const BlogWidget(color: Colors.red),
              const SizedBox(
                height: 20,
              ),
              const BlogWidget(color: Colors.pink),
              const SizedBox(
                height: 20,
              ),
              const BlogWidget(color: Colors.amber),
            ],
          ),
        ),
      ),
    );
  }
}
