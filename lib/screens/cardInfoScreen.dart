import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Row(
              children: [
                Container(
                  height: 260,
                  width: 200,
                  padding: EdgeInsets.all(18.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        // Colors.white,
                        Colors.indigo,
                        Colors.pink,
                        Colors.amber,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Apple.png"),
                          SvgPicture.asset("assets/icons/Strips3.svg"),
                        ],
                      ),
                      /* SizedBox(
                        height: 36.0,
                      ), */
                      Spacer(),
                      Text(
                        "\$7 534.14",
                        style: TextStyle(
                          fontSize: 28.0,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Platinum Plus",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      /* SizedBox(
                        height: 20.0,
                      ), */
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/Card.png"),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.white
                              ),
                              children: [
                                TextSpan(
                                  text: "VALID THRU\n",
                                  style: TextStyle(
                                    fontSize: 8.0,
                                  ),
                                ),
                                TextSpan(
                                  text: "12/24",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
