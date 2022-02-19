import 'package:flutter/material.dart';
import 'package:intelligent_planner/home_page_content.dart';
import 'package:intelligent_planner/table_calendar_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget currentPage = const HomePageContent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intelligent Planner"),
      ),
      body: currentPage,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              child: const DrawerHeader(
                child: Text(
                  "Put User Here.",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.green[700],
            ),
            ListTile(
              title: const Text("Calendar Page"),
              onTap: () => setState(() {
                currentPage = const TableCalendarView();
                Navigator.pop(context);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
