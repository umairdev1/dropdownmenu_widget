import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({super.key});

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String _selectedItem = 'Music';
  //create list of items
  final List<String> _dropDownItems = [
    'Music',
    'Education',
    'Sports',
    'Art',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.orange, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: DropdownButton(
                value: _selectedItem,
                dropdownColor: Colors.orange,
                style: TextStyle(color: Colors.white, fontSize: 20),
                iconEnabledColor: Colors.white,
                items: _dropDownItems.map((String item) {
                  return DropdownMenuItem<String>(
                    value: item,
                    child: Text(item),
                  );
                }).toList(),
                onChanged: (String? val) {
                  setState(() {
                    _selectedItem = val!;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
