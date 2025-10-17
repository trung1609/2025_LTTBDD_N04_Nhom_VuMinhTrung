import 'package:flutter/material.dart';

import '../../../constants.dart';

class NewContactSheet extends StatefulWidget {
  const NewContactSheet({super.key});

  @override
  State<NewContactSheet> createState() => _NewContactSheetState();
}

class _NewContactSheetState extends State<NewContactSheet> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _phoneController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _firstNameController.addListener(_validateInput);
    _lastNameController.addListener(_validateInput);
    _phoneController.addListener(_validateInput);
  }

  void _validateInput() {
    final isEnabled =
        _firstNameController.text.isNotEmpty ||
        _lastNameController.text.isNotEmpty ||
        _phoneController.text.isNotEmpty;
    if (isEnabled != _isButtonEnabled) {
      setState(() {
        _isButtonEnabled = isEnabled;
      });
    }
  }

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        top: 16,
        left: 20,
        right: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(color: kPrimaryColor, fontSize: 16),
                  ),
                ),
                Text(
                  "New contact",
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create",
                    style: TextStyle(
                      color: _isButtonEnabled
                          ? kPrimaryColor
                          : Theme.of(context).textTheme.bodyMedium!.color,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.grey.shade200,
                  child: const Text(
                    "C",
                    style: TextStyle(fontSize: 28, color: Colors.grey),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          hintText: "First Name",
                          border: InputBorder.none,
                        ),
                      ),
                      Divider(height: 1),
                      TextField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          hintText: "Last Name",
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            Row(
              children: [
                const Icon(Icons.remove_circle, color: kPrimaryColor, size: 28),
                const SizedBox(height: 12),
                const Text("mobile"),
                const SizedBox(height: 20),
                Expanded(
                  child: TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.add_circle, color: kPrimaryColor, size: 28),
                const SizedBox(height: 12),
                const Text("add phone"),
                const SizedBox(height: 16),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: kDefaultPadding * 25)),
          ],
        ),
      ),
    );
    ;
  }
}
