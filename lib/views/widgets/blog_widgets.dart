import 'package:flutter/material.dart';

class BlogWidget extends StatelessWidget {
  const BlogWidget({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 200,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
        )),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('25 feb',
                  style: TextStyle(color: Colors.grey[500], fontSize: 14)),
              const Text('How to code Flutter',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                      fontWeight: FontWeight.bold)),
              Row(
                children: [
                  Text('50k',
                      style: TextStyle(color: Colors.grey[500], fontSize: 8)),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.comment,
                  ),
                ],
              ),
            ],
          ),
        )),
      ],
    );
  }
}
