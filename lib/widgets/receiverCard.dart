import 'package:flutter/material.dart';

class ReceiverCard extends StatelessWidget {
  final String receiverImg;
  final String name;

  const ReceiverCard({
    Key? key,
    required this.receiverImg,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            receiverImg,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 18.0,
              color: Color(0xFF081C81),
            ),
          ),
        ],
      ),
    );
  }
}
