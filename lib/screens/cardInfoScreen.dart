import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:banking_app/widgets/paymentCard.dart';
import 'package:banking_app/widgets/receiverCard.dart';

class CardInfoScreen extends StatelessWidget {
  const CardInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF081C81),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/GroupOf4.svg"),
                SvgPicture.asset("assets/icons/search.svg"),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PaymentCard(
                    isPrimary: true,
                    balance: "\$7 534.14",
                    cardType: "Platinum Plus",
                    providerImg: "assets/images/Apple.png",
                    validThru: "12/24",
                  ),
                  PaymentCard(
                    balance: "\$2 617.14",
                    cardType: "Standard",
                    providerImg: "assets/images/MasterCardLogo.png",
                    validThru: "12/22",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Center(
              child: Text(
                "Send money to",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 18.0,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Colors.white,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                ReceiverCard(
                  receiverImg: "",
                  name: "Chris",
                ),
                ReceiverCard(
                  receiverImg: "",
                  name: "Alex",
                ),
                ReceiverCard(
                  receiverImg: "",
                  name: "Sebastian",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}




