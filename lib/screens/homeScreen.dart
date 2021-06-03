import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SvgPicture.asset("assets/icons/chevron-left.svg"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Total Balnce",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$7 534.14",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset("assets/images/MasterCardLogo.png"),
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              height: 100.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF2547F4),
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(36.0),
                  topRight: const Radius.circular(36.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 28.0, vertical: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(height: 1.35),
                        children: [
                          TextSpan(
                            text: "Income\n",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          TextSpan(
                            text: "\$2 542.25",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          height: 1.35
                        ),
                        children: [
                          TextSpan(
                            text: "Spent\n",
                            style: TextStyle(
                              fontSize: 17.0,
                            ),
                          ),
                          TextSpan(
                            text: "\$1 832.74",
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Color(0xFF2547F4),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(36.0),
                      topLeft: Radius.circular(36.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Expenses",
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Color(0xFF081C81),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 2.0,
                            width: 30.0,
                            color: Color(0xFF081C81),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      /* ExpensesTile(
                        image: "",
                        title: "Netfilx",
                        paymentDate: "27 April 2021",
                        cost: 7.99,
                      ),
                      ExpensesTile(
                        image: "",
                        title: "Shopify",
                        paymentDate: "02 May 2021",
                        cost: 14.99,
                      ),
                      ExpensesTile(
                        image: "",
                        title: "Uber",
                        paymentDate: "10 May 2021",
                        cost: 5.64,
                      ),
                      ExpensesTile(
                        image: "",
                        title: "Dropbox",
                        paymentDate: "03 June 2021",
                        cost: 7.18,
                      ), */
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(14.0)),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
      subtitle: RichText(
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
      trailing: RichText(
        text: TextSpan(children: [
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
        ]),
      ),
    );
  }
}
