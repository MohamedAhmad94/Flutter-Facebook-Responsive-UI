import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_home/models/post_model.dart';
import 'package:facebook_home/setup/utils.dart';
import 'package:facebook_home/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final Post? post;

  const PostContainer({Key? key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: isDesktop ? 5.0 : 3.0,
      ),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _PostHeader(post: post),
                  SizedBox(height: 10.0),
                  Text(post!.caption!),
                  post!.imageUrl != ''
                      ? SizedBox.shrink()
                      : SizedBox(height: 6.0),
                ],
              ),
            ),
            post!.imageUrl != ''
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CachedNetworkImage(imageUrl: post!.imageUrl!),
                  )
                : SizedBox.shrink(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
              child: _PostStats(post: post),
            ),
          ],
        ),
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post? post;

  const _PostHeader({Key? key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProfileAvatar(imageUrl: post!.user!.imageUrl),
        SizedBox(width: 8.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post!.user!.name!,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    '${post!.postingDate} • ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 12.0,
                    ),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12.0,
                  )
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.more_horiz),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _PostStats extends StatelessWidget {
  final Post? post;

  const _PostStats({Key? key, @required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: Utils.facebookBlue,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.thumb_up,
                size: 10.0,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 4.0),
            Expanded(
              child: Text(
                '${post!.likes}',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
              ),
            ),
            Text(
              '${post!.comments} Comments',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            SizedBox(width: 8.0),
            Text(
              '${post!.shares} Shares',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          children: [
            _PostButton(
              icon: Icon(
                Icons.thumb_up_outlined,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Like',
              onTap: () {},
            ),
            _PostButton(
              icon: Icon(
                Icons.comment_outlined,
                color: Colors.grey[600],
                size: 20.0,
              ),
              label: 'Comment',
              onTap: () {},
            ),
            _PostButton(
              icon: Icon(
                Icons.share_outlined,
                color: Colors.grey[600],
                size: 25.0,
              ),
              label: 'Share',
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  final Icon? icon;
  final String? label;
  final VoidCallback? onTap;

  const _PostButton({
    Key? key,
    @required this.icon,
    @required this.label,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            height: 25.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon!,
                SizedBox(width: 4.0),
                Text(label!),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
