import 'package:flutter/material.dart';

class ExpensesTile extends StatelessWidget {
  final String image;
  final String title;
  final String paymentDate;
  final double cost;

  const ExpensesTile({
    Key? key,
    required this.image,
    required this.title,
    required this.paymentDate,
    required this.cost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 2.0),
      leading: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
        child: Image.network(
          image,
          height: 700.0,
          width: 70.0,
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
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "next payment\n",
                style: TextStyle(
                  color: Color(0xFF6F8099),
                ),
              ),
              TextSpan(
                text: paymentDate,
                style: TextStyle(
                  color: Color(0xFF030710),
                ),
              ),
            ],
          ),
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(8.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: 24.0,
            ),
            children: [
              TextSpan(
                text: "\$ ",
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
