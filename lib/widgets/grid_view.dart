import 'package:flutter/material.dart';

class CustoumGridView extends StatelessWidget {
  const CustoumGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 7,
        mainAxisSpacing: 7,
        childAspectRatio: 0.75,
      ),
      itemCount: 11,
      itemBuilder: (context, index) {
        return const CostoumBox();
      },
    );
  }
}

class CostoumBox extends StatelessWidget {
  const CostoumBox({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset('lib/assets/images/IMG_1002.jpg', fit: BoxFit.fill),
    );
  }
}
