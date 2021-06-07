import 'package:facebook_home/models/user_model.dart';
import 'package:facebook_home/setup/utils.dart';
import 'package:facebook_home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OtherOptions extends StatelessWidget {
  final List<List> _otherOptions = [
    [
      Icons.health_and_safety_outlined,
      Colors.deepPurple,
      'COVID-19 Info Center'
    ],
    [Icons.group, Colors.cyan, 'Friends'],
    [Icons.event, Colors.red, 'Events'],
    [Icons.groups, Utils.facebookBlue, 'Grops'],
    [Icons.store, Utils.facebookBlue, 'Marketplace'],
    [Icons.ondemand_video, Utils.facebookBlue, 'Watch'],
  ];

  final User? currentUser;

  OtherOptions({Key? key, @required this.currentUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 280.0),
      child: ListView.builder(
          itemCount: 1 + _otherOptions.length,
          itemBuilder: (contxt, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: UserCard(user: currentUser),
              );
            }
            final List option = _otherOptions[index - 1];

            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child:
                  _Option(icon: option[0], color: option[1], label: option[2]),
            );
          }),
    );
  }
}

class _Option extends StatelessWidget {
  final IconData? icon;
  final Color? color;
  final String? label;

  const _Option({
    Key? key,
    @required this.icon,
    @required this.color,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Icon(icon, size: 38.0, color: color),
          SizedBox(width: 6.0),
          Flexible(
            child: Text(
              label!,
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
