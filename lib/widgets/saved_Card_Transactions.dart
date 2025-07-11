import 'package:flutter/material.dart';

class SavedCardTransactions
    extends StatelessWidget {
  final double maxheight;
  final double maxwidth;
  const SavedCardTransactions({
    super.key,
    required this.maxheight,
    required this.maxwidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          width: maxwidth,
          height: maxheight * 0.1,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Kart",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "S&F PLATINUM AMEX",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_right),
                  SizedBox(
                    width: maxwidth * 0.01,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "3775 **** **** 056",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: maxheight * 0.01),
        Container(
          padding: EdgeInsets.only(
            top: 10,
            left: 10,
          ),
          width: maxwidth,
          height: maxheight * 0.07,
          color: Colors.white,
          child: Row(
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    "Borç Tipi",
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  Text(
                    "TL",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Icon(Icons.arrow_right),
                ],
              ),
              SizedBox(width: maxwidth * 0.01),
            ],
          ),
        ),
        SizedBox(height: maxheight * 0.01),
        Container(
          padding: EdgeInsets.only(left: 10),
          width: maxwidth,
          height: maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Hesap",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_right),
              SizedBox(width: maxwidth * 0.01),
            ],
          ),
        ),
        SizedBox(height: maxheight * 0.01),
        Container(
          padding: EdgeInsets.only(left: 10),
          width: maxwidth,
          height: maxheight * 0.07,
          color: Colors.white,
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center,
            children: [
              Text(
                "Tutar",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: maxheight * 0.01),
        SizedBox(
          height: maxheight * 0.06,
          width: maxwidth,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal,
              shape: RoundedRectangleBorder(),
            ),
            onPressed: () {},
            child: Text(
              "Devam",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
