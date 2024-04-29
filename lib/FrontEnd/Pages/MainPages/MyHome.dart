import 'package:back_front/FrontEnd/Widgets/ActionSection.dart';
import 'package:back_front/FrontEnd/Widgets/ContactSection.dart';
import 'package:back_front/FrontEnd/Widgets/TopSection.dart';
import 'package:back_front/FrontEnd/Widgets/TransactionSection.dart';
import 'package:flutter/material.dart';
import 'package:back_front/FrontEnd/Global/MyColor.dart' as colors;

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.MyColors.backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: colors.MyColors.accentColor,
        unselectedItemColor: colors.MyColors.disableColor,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.pie_chart), label: "Report"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "Stock"),
          BottomNavigationBarItem(
              icon: Icon(Icons.credit_card), label: "Cards"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopSection(),
              ContactSection(),
              SizedBox(
                height: 20,
              ),
              ActionSection(),
              SizedBox(
                height: 20,
              ),
              TransactionSection(),
            ],
          ),
        ),
      ),
    );
  }
}
