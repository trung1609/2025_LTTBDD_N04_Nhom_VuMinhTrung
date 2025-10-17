import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../l10n/app_localization.dart';

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
    final t = AppLocalizations.of(context)!;
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
                    t.cancel,
                    style: TextStyle(color: kPrimaryColor, fontSize: 16),
                  ),
                ),
                Text(
                  t.newContact,
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyMedium!.color,
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    t.create,
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
                const SizedBox(height: kDefaultPadding, width: kDefaultPadding),
                Expanded(
                  child: Column(
                    children: [
                      TextField(
                        controller: _firstNameController,
                        decoration: InputDecoration(
                          hintText: t.firstName,
                          border: InputBorder.none,
                          suffixIcon: _firstNameController.text.isNotEmpty
                              ? IconButton(
                                  onPressed: () {
                                    _firstNameController.clear();
                                  },
                                  icon: Icon(Icons.clear, size: 18),
                                )
                              : null,
                        ),
                      ),
                      Divider(height: 1, color: Theme.of(context).dividerColor),
                      TextField(
                        controller: _lastNameController,
                        decoration: InputDecoration(
                          hintText: t.lastName,
                          border: InputBorder.none,
                          suffixIcon: _lastNameController.text.isNotEmpty
                              ? IconButton(
                                  onPressed: () {
                                    _lastNameController.clear();
                                  },
                                  icon: Icon(Icons.clear, size: 18),
                                )
                              : null,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: kDefaultPadding),
            IntrinsicHeight(
              child: Row(
                children: [
                  const Icon(Icons.remove_circle, color: Colors.red, size: 28),
                  const SizedBox(width: 5),
                  Text(
                    t.mobile,
                    style: TextStyle(
                      color: Theme.of(context).textTheme.bodyMedium!.color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                    width: kDefaultPadding / 2,
                  ),
                  VerticalDivider(width: 15, thickness: 1, color: Colors.grey),
                  Expanded(
                    child: TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: t.phone,
                        suffixIcon: _phoneController.text.isNotEmpty
                            ? IconButton(
                                onPressed: () {
                                  _phoneController.clear();
                                },
                                icon: Icon(Icons.clear, size: 18),
                              )
                            : null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(height: 1, color: Theme.of(context).dividerColor),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.add_circle,
                      color: kPrimaryColor,
                      size: 28,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      t.addPhone,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyMedium!.color,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            ),
            Divider(height: 1, color: Theme.of(context).dividerColor),
            SizedBox(height: kDefaultPadding * 3),
          ],
        ),
      ),
    );
  }
}
