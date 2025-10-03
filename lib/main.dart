import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Material(
        child: ElevatedButton(
          onPressed: () {
            print("Bạn vừa ấn nút.");
          },
          child: Text("Tính tổng"),
        ),
      ),
    ),
  );
}
