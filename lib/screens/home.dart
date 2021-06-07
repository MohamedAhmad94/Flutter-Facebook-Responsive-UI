import 'package:facebook_home/models/demo_data.dart';
import 'package:facebook_home/setup/utils.dart';
import 'package:facebook_home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:facebook_home/models/post_model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TrackingScrollController _trackingScrollController =
      TrackingScrollController();

  @override
  void dispose() {
    super.dispose();
    _trackingScrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Responsive(
          mobile: _MobileHomeScreen(
              mobileScrollController: _trackingScrollController),
          desktop: _DesktopHomeScreen(
              desktopScrollController: _trackingScrollController),
        ),
      ),
    );
  }
}

class _MobileHomeScreen extends StatelessWidget {
  final TrackingScrollController? mobileScrollController;

  const _MobileHomeScreen({Key? key, @required this.mobileScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: mobileScrollController,
      slivers: [
        SliverAppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Utils.facebookBlue,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
              letterSpacing: -1.2,
            ),
          ),
          centerTitle: false,
          floating: true,
          actions: [
            CircledButton(icon: Icons.search, iconSize: 30.0, onPressed: () {}),
            CircledButton(
                icon: Icons.messenger_rounded,
                iconSize: 30.0,
                onPressed: () {}),
          ],
        ),
        SliverToBoxAdapter(
          child: CreatePostContainer(currentUser: DemoData.currentUser),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Rooms(onlineUsers: DemoData.onlineUsers),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          sliver: SliverToBoxAdapter(
            child: Stories(
                currentUser: DemoData.currentUser, stories: DemoData.stories),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final Post post = DemoData.posts[index];
              return PostContainer(post: post);
            },
            childCount: DemoData.posts.length,
          ),
        )
      ],
    );
  }
}

class _DesktopHomeScreen extends StatelessWidget {
  final TrackingScrollController? desktopScrollController;

  const _DesktopHomeScreen({Key? key, @required this.desktopScrollController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: OtherOptions(currentUser: DemoData.currentUser),
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 600,
          child: CustomScrollView(
            controller: desktopScrollController,
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
                sliver: SliverToBoxAdapter(
                  child: Stories(
                      currentUser: DemoData.currentUser,
                      stories: DemoData.stories),
                ),
              ),
              SliverToBoxAdapter(
                child: CreatePostContainer(currentUser: DemoData.currentUser),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: Rooms(onlineUsers: DemoData.onlineUsers),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final Post post = DemoData.posts[index];
                    return PostContainer(post: post);
                  },
                  childCount: DemoData.posts.length,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Flexible(
          flex: 2,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: ContactsList(users: DemoData.onlineUsers),
            ),
          ),
        )
      ],
    );
  }
}
