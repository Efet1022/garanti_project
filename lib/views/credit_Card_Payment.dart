import 'package:flutter/material.dart';
import 'package:garanti_project/widgets/pay_With_Card_Numbers.dart';
import 'package:garanti_project/widgets/saved_Card_Transactions.dart';

class CreditCardPayment extends StatefulWidget {
  const CreditCardPayment({super.key});

  @override
  State<CreditCardPayment> createState() =>
      _CreditCardPaymentState();
}

class _CreditCardPaymentState
    extends State<CreditCardPayment> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
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
        actions: [
          Icon(
            Icons.info_outline_rounded,
            color: Colors.teal,
            size: 25,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: Column(
          children: [
            SizedBox(height: maxheight * 0.02),
            Row(
              children: [
                Text(
                  "Kart Borcu Ödeme",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            SizedBox(height: maxheight * 0.03),
            Row(
              children: [
                Text(
                  "S&F PLATINUM AMEX Kartınız için bu ay ödemeniz gereken\nborcunuz bulunmuyor. Yine de bu kartınıza ödeme yapmak\nisterseniz kartınız için belirlenen limitler dahilinde ödemenizi\ngerçekleştirebilirsiniz.",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
            SizedBox(height: maxheight * 0.02),
            Container(
              height: maxheight * 0.165,
              width: maxwidth,
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                    child: Row(
                      children: [
                        Text(
                          "Ödeme Tipi",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RadioListTile(
                    radioScaleFactor: 1.5,
                    activeColor: Colors.teal,
                    title: Text(
                      "Kayıtlı Kart İşlemleri",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    value: 1,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                  Divider(
                    height: 0,
                    thickness: 1,
                    color: Colors.black12,
                  ),
                  RadioListTile(
                    radioScaleFactor: 1.5,
                    activeColor: Colors.teal,
                    title: Text(
                      "Kart No ile Ödeme",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    value: 2,
                    groupValue: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: maxheight * 0.02),
            if (selectedValue == 1)
              SavedCardTransactions(
                maxheight: maxheight,
                maxwidth: maxwidth,
              ),
            if (selectedValue == 2)
              PayWithCardNumbers(
                maxheight: maxheight,
                maxwidth: maxwidth,
              ),
          ],
        ),
      ),
    );
  }
}
