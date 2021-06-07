import 'package:facebook_home/models/user_model.dart';
import 'package:facebook_home/setup/utils.dart';
import 'package:facebook_home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final User? currentUser;
  final List<IconData>? icons;
  final int? index;
  final Function(int)? onTap;

  const CustomAppBar({
    Key? key,
    @required this.currentUser,
    @required this.icons,
    @required this.index,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              'facebook',
              style: TextStyle(
                color: Utils.facebookBlue,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          // Container(
          //   height: double.infinity,
          //   width: 60.0,
          //   color: Colors.grey[200],
          //   child: TextField(
          //     decoration: InputDecoration(
          //       prefixIcon: Icon(Icons.search, size: 17.0, color: Colors.black),
          //       hintText: "Search Facebook",
          //       hintStyle: TextStyle(
          //           fontSize: 17.0,
          //           color: Colors.black54,
          //           fontWeight: FontWeight.normal),
          //       border: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(15.0),
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            height: double.infinity,
            width: 600.0,
            child: CustomTabBar(
              icons: icons,
              index: index,
              onTap: onTap,
              isBottomIndicator: true,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                UserCard(user: currentUser),
                SizedBox(width: 12.0),
                CircledButton(icon: Icons.add, iconSize: 30, onPressed: () {}),
                CircledButton(
                    icon: Icons.messenger_rounded,
                    iconSize: 25.0,
                    onPressed: () {}),
                CircledButton(
                    icon: Icons.notifications,
                    iconSize: 25.0,
                    onPressed: () {}),
                CircledButton(
                    icon: Icons.arrow_drop_down,
                    iconSize: 25.0,
                    onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
