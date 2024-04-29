import 'package:back_front/BackEnd/Models/Transaction.dart';
import 'package:back_front/FrontEnd/Global/MyTextStyle.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Transaction",
                style: MyTextStyle.headLine3,
              ),
              Text(
                "See All",
                style: MyTextStyle.subTitle2,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: transaction().length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: transaction()[index].color.withOpacity(.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          transaction()[index].iconData,
                          color: transaction()[index].color,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              transaction()[index].title,
                              style: MyTextStyle.bodyText1,
                            ),
                            Text(
                              transaction()[index].date,
                              style: MyTextStyle.subTitle1,
                            ),
                          ],
                        ),

                      ),
                      Text(transaction()[index].amount,style: MyTextStyle.bodyText2,),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
