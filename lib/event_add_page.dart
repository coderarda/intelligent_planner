import 'package:flutter/material.dart';

class EventAddPage extends StatefulWidget {
  final DateTime selectedDate;
  const EventAddPage({Key? key, required this.selectedDate}) : super(key: key);
  @override
  State<EventAddPage> createState() => _EventAddPageState();
}

class _EventAddPageState extends State<EventAddPage> {
  String? eventTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add event"),
        leading: BackButton(
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: TextField(
              controller: TextEditingController(
                text: eventTitle,
              ),
              decoration: const InputDecoration(
                hintText: "Event Title",
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.alarm),
            title: const Text("Select Event Time"),
            //Modify the string according to selected time
            onTap: () =>
                showTimePicker(context: context, initialTime: TimeOfDay.now()),
          ),
        ],
        // Add button to submit
      ),
    );
  }
}
