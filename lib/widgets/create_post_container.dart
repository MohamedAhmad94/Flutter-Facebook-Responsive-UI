import 'package:facebook_home/models/user_model.dart';
import 'package:facebook_home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User? currentUser;
  const CreatePostContainer({Key? key, @required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);
    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      child: Container(
        padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(imageUrl: currentUser!.imageUrl),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: "What's on your mind, Ian?"),
                  ),
                ),
              ],
            ),
            Divider(height: 10.0, thickness: 0.5),
            Container(
              height: 40.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: Text("Live Video"),
                  ),
                  VerticalDivider(width: 8.0),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.photo_library, color: Colors.green),
                    label: Text("Photo"),
                  ),
                  VerticalDivider(width: 8.0),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.emoji_emotions_outlined,
                        color: Colors.yellow[300]),
                    label: Text("Feeling/Activity"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
