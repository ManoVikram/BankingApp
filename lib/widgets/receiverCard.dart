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
      margin: EdgeInsets.only(right: 16.0),
      padding: EdgeInsets.only(bottom: 5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                child: Image.network(
                  receiverImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7.0,
          ),
          Expanded(
            flex: 1,
            child: Text(
              name,
              style: TextStyle(
                // fontSize: 18.0,
                color: Color(0xFF081C81),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
