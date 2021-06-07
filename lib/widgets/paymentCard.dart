import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PaymentCard extends StatelessWidget {
  final bool isPrimary;
  final String balance;
  final String cardType;
  final String providerImg;
  final String validThru;

  const PaymentCard({
    Key? key,
    this.isPrimary = false,
    required this.balance,
    required this.cardType,
    required this.providerImg,
    required this.validThru,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 200,
      margin: EdgeInsets.only(right: 20.0),
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
        gradient: isPrimary
            ? LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  // Colors.white,
                  Colors.indigo,
                  Colors.pink,
                  Colors.amber,
                ],
              )
            : null,
        color: isPrimary ? null : Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(providerImg),
              SvgPicture.asset(
                "assets/icons/Strips3.svg",
                color: isPrimary ? Colors.white : Color(0xFF081C81),
              ),
            ],
          ),
          /* SizedBox(
            height: 36.0,
          ), */
          Spacer(),
          Text(
            balance,
            style: TextStyle(
              fontSize: 28.0,
              color: isPrimary ? Colors.white : Color(0xFF030710),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            cardType,
            style: TextStyle(
              fontSize: 18.0,
              color: isPrimary ? Colors.white : Color(0xFF6F8099),
            ),
          ),
          /* SizedBox(
            height: 20.0,
          ), */
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (isPrimary) Image.asset("assets/images/Card.png"),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                      text: "VALID THRU\n",
                      style: TextStyle(
                        fontSize: 8.0,
                        color: isPrimary ? Colors.white : Color(0xFF6F8099),
                      ),
                    ),
                    TextSpan(
                      text: validThru,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: isPrimary ? Colors.white : Color(0xFF6F8099),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
