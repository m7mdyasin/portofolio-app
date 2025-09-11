import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:portofolio_app/widgets/custoum_drop_down_menu.dart';

class CustoumAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustoumAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 18, 3, 42),
      elevation: 4,
      centerTitle: true,
      title: const Text(
        'Portofolio',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          letterSpacing: 1.2,
        ),
      ),
      actions: [CustoumDropDownMenu()],
    );
  }
}
