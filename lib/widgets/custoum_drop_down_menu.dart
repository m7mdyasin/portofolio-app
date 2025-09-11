import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class CustoumDropDownMenu extends StatelessWidget {
  const CustoumDropDownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton2(
        customButton: const Icon(
          Icons.more_vert,
          size: 32,
          color: Colors.white,
        ),
        items: [
          DropdownMenuItem(
            value: 'settings',
            child: Text(
              'Settings',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          DropdownMenuItem(
            value: 'about',
            child: Text(
              'About Me',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          DropdownMenuItem(
            value: 'signout',
            child: Text(
              'Sign out',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
        onChanged: (value) {
          if (value == 'settings') {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Settings selected')));
          } else if (value == 'about') {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('About Me selected')));
          } else if (value == 'signout') {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Sign out selected')));
          }
        },
        dropdownStyleData: DropdownStyleData(
          width: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 18, 3, 42),
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: 4,
          padding: const EdgeInsets.symmetric(vertical: 8),
        ),
        menuItemStyleData: const MenuItemStyleData(
          height: 48,
          padding: EdgeInsets.symmetric(horizontal: 24),
        ),
      ),
    );
  }
}
