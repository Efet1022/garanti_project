import 'package:flutter/material.dart';
import 'package:garanti_project/widgets/show_Less_Widget.dart';
import 'package:garanti_project/widgets/show_More_Widget.dart';

class MoneyTransfer extends StatefulWidget {
  const MoneyTransfer({super.key});

  @override
  State<MoneyTransfer> createState() =>
      _MoneyTransferState();
}

class _MoneyTransferState
    extends State<MoneyTransfer> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    //print(isVisible); //Callback kontrol
    double maxheight =
        MediaQuery.of(context).size.height;
    double maxwidth =
        MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.teal,
            size: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            Text(
              "Para Transferi",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            SizedBox(height: maxheight * 0.015),
            isVisible
                ? ShowMoreWidget(
                  isVisible: isVisible,
                  maxheight: maxheight,
                  maxwidth: maxwidth,
                  onToggle: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                )
                : ShowLessWidget(
                  isVisible: isVisible,
                  maxheight: maxheight,
                  maxwidth: maxwidth,
                  onToggle: () {
                    //Burda callback ile burada gerçekleşen işlemi diğer sayfadaki widget a gönderiyorum
                    //Buradan aldığımız bilgi diğer widget sayfalarında kullanilabiliyor.
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                ),
          ],
        ),
      ),
    );
  }
}
