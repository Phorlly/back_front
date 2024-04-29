import 'package:back_front/FrontEnd/Global/MyTextStyle.dart';
import 'package:flutter/material.dart';
import 'package:back_front/FrontEnd/Global/MyColor.dart' as colors;

class ActionSection extends StatelessWidget {
  const ActionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ActionItem(
              title: "Add Money",
              icon: Icons.add,
              color: colors.MyColors.accentColor),
          ActionItem(
              title: "Send Money",
              icon: Icons.credit_card,
              color: colors.MyColors.orangeColor),
          ActionItem(
              title: "More",
              icon: Icons.dashboard_outlined,
              color: colors.MyColors.disableColor),
        ],
      ),
    );
  }
}

class ActionItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const ActionItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: color.withOpacity(.2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: MyTextStyle.bodyText2,
        ),
      ],
    );
  }
}
