import 'package:facebook_home/setup/utils.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<IconData>? icons;
  final int? index;
  final Function(int)? onTap;
  final bool? isBottomIndicator;

  const CustomTabBar({
    Key? key,
    @required this.icons,
    @required this.index,
    @required this.onTap,
    this.isBottomIndicator = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorPadding: EdgeInsets.zero,
      indicator: BoxDecoration(
        border: isBottomIndicator!
            ? Border(
                bottom: BorderSide(
                  color: Utils.facebookBlue,
                  width: 3.0,
                ),
              )
            : Border(
                top: BorderSide(
                  color: Utils.facebookBlue,
                  width: 3.0,
                ),
              ),
      ),
      tabs: icons!
          .asMap()
          .map((i, e) => MapEntry(
                i,
                Tab(
                  icon: Icon(
                    e,
                    color: i == index ? Utils.facebookBlue : Colors.black54,
                    size: 30.0,
                  ),
                ),
              ))
          .values
          .toList(),
      onTap: onTap,
    );
  }
}
