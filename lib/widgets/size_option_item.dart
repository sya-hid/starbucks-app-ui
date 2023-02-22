import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starbucks_app_ui/const.dart';
import 'package:starbucks_app_ui/models/size_options_model.dart';

class SizeOptionItem extends StatelessWidget {
  final int index;
  final SizeOption sizeOption;
  final bool selected;
  const SizeOptionItem({
    Key? key,
    required this.index,
    required this.sizeOption,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 66,
          width: 66,
          decoration: BoxDecoration(
              color: selected ? green : green.withOpacity(0.3),
              shape: BoxShape.circle),
          child: Center(
            child: SvgPicture.asset(
              'assets/coffee-cup.svg',
              color: selected ? white : green,
              width: 26 + (index * 5),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(sizeOption.name,
            style: const TextStyle(
                color: black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5)),
        Text(
          '${sizeOption.quantity} Fl Oz',
          style: TextStyle(color: black.withOpacity(0.7), fontSize: 12),
        )
      ],
    );
  }
}
