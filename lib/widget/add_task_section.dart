import 'package:flutter/material.dart';

class AddTaskSection extends StatelessWidget {
  const AddTaskSection({super.key, this.onChanged, this.onPressed});

  final void Function(String)? onChanged;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    hintText: 'Add a new task...',
                    hintStyle: TextStyle(color: Colors.black54),
                    fillColor: Color(0xffEEF5F3),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide:
                      BorderSide(color: Colors.white, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide(
                          color: Colors.white,
                          width: 2), // White border when focused
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CircleAvatar(
                radius: 22.5,
                backgroundColor: Color(0xffDEE4E2),
                child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      Icons.add,
                    ),
                    color: Color(0xff9BA19F)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
