import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                  backgroundColor: Colors.white,
                  textColor: Colors.black,
                  text: "19,99 \$",
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16)),
                  onPressed: () {})),
          Expanded(
              child: CustomButton(
                  backgroundColor: const Color(0xffEF8262),
                  textColor: Colors.white,
                  text: "Free Preview",
                  fontSize: 16,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16)),
                  onPressed: () {}))
        ],
      ),
    );
  }
}
