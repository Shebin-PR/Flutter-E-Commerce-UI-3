import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ui_3/product_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: const Icon(
          Icons.arrow_back,
          size: 30,
        ),
        title: const Text(
          "Payments",
          style: TextStyle(fontSize: 25),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.info_outline,
              size: 30,
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 18),
                  child: const Text(
                    "Transaction LImit",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 13),
                  child: const Text(
                    "A free limit up to which you will recieve \nthe online payments directly in your bank",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 8, right: 20, top: 13),
                  child: LinearPercentIndicator(
                    width: 330,
                    lineHeight: 7,
                    progressColor: Colors.blue[800],
                    percent: 0.35,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: const Text(
                    '36,668 left out of ₹50,000',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ),
                Container(
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.only(left: 14, top: 10),
                  child: const Center(
                    child: Text(
                      'Increase limit',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          subTitle(
              "Default Method", "Online Payments", Icons.arrow_forward_ios),
          subTitle("Payment Profile", "Bank Account", Icons.arrow_forward_ios),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 23),
            child: const Divider(
              color: Colors.black,
            ),
          ),
          subTitle("Payment Overview", "Life TIme", Icons.keyboard_arrow_down),
          Row(
            children: [
              card("AMOUNT ON HOLD", "₹ 0", 0xffEE741F),
              card("AMOUNT RECIEVED", "₹ 13,332", 0xff16B31A),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              top: 15,
            ),
            child: const Text(
              "Transactions",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: [
              head("On hold", 100.0, Colors.grey[300], Colors.grey[600]),
              head("Payouts (15)", 115.0, Colors.blue[800], Colors.white),
              head("Refunds", 100.0, Colors.grey[300], Colors.grey[600]),
            ],
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #16889585",
            "Apr 26, 04:36 AM",
            "₹659",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #16889588",
            "may 26, 04:06 PM",
            "₹699.65",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #16896598",
            "jun 06, 10:16 PM",
            "₹810.50",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹2340",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹340",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹10000",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹5600",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹900",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹7000",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹4500",
          ),
          products(
            "assets/images/p1.jpeg",
            "Order #18896592",
            "jul 17, 11:26 AM",
            "₹10560",
          ),
        ],
      ),
    );
  }
}
