import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  final String image;
  final String title;
  final String paidDate;
  final double cost;

  const HistoryTile({
    Key? key,
    required this.image,
    required this.title,
    required this.paidDate,
    required this.cost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 2.0),
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        child: Image.network(
          image,
          height: 48.0,
          width: 48.0,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          paidDate,
          style: TextStyle(
            color: Color(0xFF030710),
            fontSize: 12.0,
          ),
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 22.0,
            ),
            children: [
              TextSpan(
                text: "- \$ ",
                style: TextStyle(
                  color: Color(0xFF6F8099),
                ),
              ),
              TextSpan(
                text: "$cost",
                style: TextStyle(
                  color: Color(0xFF030710),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
