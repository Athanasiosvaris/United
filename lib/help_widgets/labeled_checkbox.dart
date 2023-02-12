import 'package:flutter/material.dart';

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    super.key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
    required this.icon,
  });

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Icon(size: 20, icon),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Text(
                    style: const TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 20),
                    label)),
            Checkbox(
              activeColor: const Color.fromARGB(255, 89, 61, 167),
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}
