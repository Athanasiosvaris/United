import 'package:flutter/material.dart';

class ProfilePanel extends StatelessWidget {
  const ProfilePanel({
    super.key,
    required this.title,
    required this.subtitle,
    this.length,
  });
  final String title;
  final String subtitle;
  final double? length;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontFamily: 'Roboto',
                      fontSize: 18),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  width: length,
                  child: Text(subtitle,
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: 'Roboto',
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
            const Spacer()
          ],
        ));
  }
}
