import 'package:flutter/material.dart';

class ExpandableGridItem extends StatefulWidget {
  final String image;
  final String subjectName;

  const ExpandableGridItem({super.key, 
    required this.image,
    required this.subjectName,
  });

  @override
  _ExpandableGridItemState createState() => _ExpandableGridItemState();
}

class _ExpandableGridItemState extends State<ExpandableGridItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: isExpanded
              ? Border.all(color: Colors.amber, width: 2.0)
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.image,
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),
            Text(
              widget.subjectName,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (isExpanded) const SizedBox(height: 16),
            if (isExpanded)
              Text(
                'More content for ${widget.subjectName}',
                style: const TextStyle(fontSize: 12.0),
              ),
          ],
        ),
      ),
    );
  }
}
