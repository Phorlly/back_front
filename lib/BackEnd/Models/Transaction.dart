import 'package:back_front/FrontEnd/Global/MyColor.dart' as colors;
import 'package:flutter/material.dart';

class Transaction {
  String title;
  String amount;
  String date;
  IconData iconData;
  Color color;

  Transaction(
      {required this.title,
      required this.amount,
      required this.date,
      required this.iconData,
      required this.color});
}

List<Transaction> transaction() {
  return [
    Transaction(
        title: "Food",
        amount: "\$490",
        date: "1 April 2023",
        iconData: Icons.fastfood_outlined,
        color: colors.MyColors.orangeColor),
    Transaction(
        title: "Medicine",
        amount: "\$450",
        date: "14 April 2023",
        iconData: Icons.medical_information_rounded,
        color: colors.MyColors.greenColor),
    Transaction(
        title: "Cloths",
        amount: "\$45",
        date: "14 April 2023",
        iconData: Icons.shop,
        color: colors.MyColors.accentColor),
    Transaction(
        title: "House",
        amount: "\$45000",
        date: "14 April 2023",
        iconData: Icons.house_rounded,
        color: randomColor()),
    Transaction(
        title: "Car Rental",
        amount: "\$15000",
        date: "14 April 2023",
        iconData: Icons.car_rental_rounded,
        color: randomColor()),
  ];
}

Color randomColor() {
  return Color(Random().nextInt(0xFFFFFFFF)).withAlpha(0xFF);
}
