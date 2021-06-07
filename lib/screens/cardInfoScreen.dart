import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/paymentCard.dart';
import '../widgets/receiverCard.dart';
import '../widgets/historyTile.dart';

class CardInfoScreen extends StatelessWidget {
  const CardInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFF081C81),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/icons/GroupOf4.svg"),
                    SvgPicture.asset("assets/icons/search.svg"),
                  ],
                ),
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
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 18.0,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    ReceiverCard(
                      receiverImg: "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5b8576db31358e0429c734e3%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D211%26cropX2%3D2381%26cropY1%3D900%26cropY2%3D3072",
                      name: "Steve",
                    ),
                    ReceiverCard(
                      receiverImg: "https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2017/03/28/Local-Politics/Images/Supreme_Court_Gorsuch_Moments_22084-70c71-0668.jpg?t=20170517",
                      name: "Chris",
                    ),
                    ReceiverCard(
                      receiverImg: "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/35af6a41332353.57a1ce913e889.jpg",
                      name: "Sebastian",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  // margin: EdgeInsets.symmetric(horizontal: 10.0),
                  padding: EdgeInsets.only(
                    top: 20.0,
                    left: 20.0,
                    right: 20.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30.0),
                      topLeft: Radius.circular(30.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        Container(
                          height: 5,
                          width: 50,
                          color: Color(0xFF6F8099),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "History",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                            SvgPicture.asset("assets/icons/pie-chart.svg"),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        HistoryTile(
                          image: "https://yt3.ggpht.com/ytc/AAUvwngmtmIY4Hulfp7x5AwHgx79HtCSBb_sZhx6pwMsuA=s900-c-k-c0x00ffffff-no-rj",
                          title: "Netflix",
                          paidDate: "15/12/2020",
                          cost: 7.99,
                        ),
                        HistoryTile(
                          image: "https://www.lifewire.com/thmb/4sWifKedQ1jWQAKFN3SHyMsu9FQ=/2710x1806/filters:fill(auto,1)/dropbox-5b9121a0c9e77c007b5f5ea6.png",
                          title: "Dropbox",
                          paidDate: "13/12/2020",
                          cost: 12.50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


