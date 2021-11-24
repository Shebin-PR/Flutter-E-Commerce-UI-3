import 'package:flutter/material.dart';

subTitle(text, text1, IconData iccon) {
  return Container(
    height: 50,
    child: ListTile(
      leading: Container(
        padding: const EdgeInsets.only(left: 5, right: 70),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      title: Text(
        text1,
        style: const TextStyle(fontSize: 16, color: Colors.grey),
        textAlign: TextAlign.right,
      ),
      trailing: Icon(
        iccon,
        size: 25,
      ),
    ),
  );
}

// cards //

card(name, amnt, clr) {
  return Container(
    margin: const EdgeInsets.only(left: 23, top: 7),
    height: 90,
    width: 160,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(clr),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 15,
            top: 15,
          ),
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            left: 15,
            top: 10,
          ),
          child: Text(
            amnt,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}

// headline//

head(name, wdt, clr, tcl) {
  return Container(
    height: 35,
    width: wdt,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: clr,
    ),
    margin: const EdgeInsets.only(
      left: 20,
      top: 20,
    ),
    child: Center(
      child: Text(
        name,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: tcl),
      ),
    ),
  );
}

// products //

products(img, ordrs, tym, amnt) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: EdgeInsets.only(
          top: 10,
          bottom: 2,
        ),
        child: ListTile(
          leading: Container(
            child: Image.asset(
              img,
              height: 60,
              width: 60,
            ),
          ),
          onTap: () {},
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: 0,
                  bottom: 4,
                ),
                child: Text(
                  ordrs,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(
                tym,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                  right: 5,
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  amnt,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[700],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  right: 5,
                ),
                child: Text(
                  "Successful",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 20),
        child: Text(
          "₹799 deposited to:52863945788",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey[600],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(
          left: 23,
          right: 23,
        ),
        child: const Divider(
          color: Colors.black,
        ),
      ),
    ],
  );
}
