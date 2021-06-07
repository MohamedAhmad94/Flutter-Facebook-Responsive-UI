import 'package:facebook_home/models/post_model.dart';
import 'package:facebook_home/models/story_model.dart';
import 'package:facebook_home/models/user_model.dart';

class DemoData {
  static final User currentUser = User(
      name: "Ian Dooley",
      imageUrl: "https://images.unsplash.com/photo-1539571696357-5a69c17a67c6");

  static final List<User> onlineUsers = [
    User(
        name: "David Brooks",
        imageUrl:
            "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
    User(
        name: "Jane Doe",
        imageUrl:
            "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
    User(
        name: "Matthew Hinkle",
        imageUrl:
            "https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1331&q=80"),
    User(
        name: "Amy Smith",
        imageUrl:
            "https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=700&q=80"),
    User(
        name: "Carolyn Duncan",
        imageUrl:
            "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
    User(
        name: "Ed Morris",
        imageUrl:
            "https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=664&q=80"),
    User(
        name: "Paul Pinnock",
        imageUrl:
            "https://images.unsplash.com/photo-1519631128182-433895475ffe?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"),
    User(
        name: "Elizabeth Wong",
        imageUrl:
            "https://images.unsplash.com/photo-1515077678510-ce3bdf418862?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=675&q=80"),
    User(
        name: "James Lathrop",
        imageUrl:
            "https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=592&q=80"),
    User(
        name: "Jessie Samson",
        imageUrl:
            "https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"),
  ];

  static List<Story> stories = [
    Story(
      user: onlineUsers[2],
      imageUrl:
          'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
      isViewed: false,
    ),
    Story(
      user: onlineUsers[6],
      imageUrl:
          'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      isViewed: false,
    ),
    Story(
      user: onlineUsers[3],
      imageUrl:
          'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
      isViewed: false,
    ),
    Story(
      user: onlineUsers[9],
      imageUrl:
          'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      isViewed: false,
    ),
    Story(
      user: onlineUsers[7],
      imageUrl:
          'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
      isViewed: false,
    ),
    Story(
      user: onlineUsers[2],
      imageUrl:
          'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80',
      isViewed: true,
    ),
    Story(
      user: onlineUsers[6],
      imageUrl:
          'https://images.unsplash.com/photo-1499363536502-87642509e31b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      isViewed: true,
    ),
    Story(
      user: onlineUsers[3],
      imageUrl:
          'https://images.unsplash.com/photo-1497262693247-aa258f96c4f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=624&q=80',
      isViewed: true,
    ),
    Story(
      user: onlineUsers[4],
      imageUrl:
          'https://images.unsplash.com/photo-1496950866446-3253e1470e8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      isViewed: true,
    ),
    Story(
      user: onlineUsers[7],
      imageUrl:
          'https://images.unsplash.com/photo-1475688621402-4257c812d6db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80',
      isViewed: true,
    ),
  ];

  static final List<Post> posts = [
    Post(
      user: currentUser,
      caption: 'Beautiful scene of nature',
      postingDate: '58 m',
      imageUrl:
          'https://images.unsplash.com/photo-1622987362338-ec275b288355?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=889&q=80',
      likes: 15,
      comments: 7,
      shares: 3,
    ),
    Post(
      user: onlineUsers[5],
      caption: 'On a train heading to Portugal',
      postingDate: '3h',
      imageUrl:
          "https://images.unsplash.com/photo-1622759478885-bf0264e39bea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      likes: 25,
      comments: 10,
      shares: 1,
    ),
    Post(
      user: onlineUsers[4],
      caption: 'Enjoying my meal',
      postingDate: '1d',
      imageUrl:
          'https://images.unsplash.com/photo-1622532631728-7a0f63b72dd2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80',
      likes: 20,
      comments: 5,
      shares: 0,
    ),
    Post(
      user: onlineUsers[3],
      caption: 'Adventure',
      postingDate: '15h',
      imageUrl:
          'https://images.unsplash.com/photo-1573331519317-30b24326bb9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
      likes: 150,
      comments: 60,
      shares: 12,
    ),
    Post(
      user: onlineUsers[0],
      caption: "There's nothing better than spending some quailty time at home",
      postingDate: 'Yesterday at 13:28',
      imageUrl: '',
      likes: 15,
      comments: 2,
      shares: 1,
    ),
    Post(
      user: onlineUsers[9],
      caption: 'A classic',
      postingDate: '4 June at 22:45',
      imageUrl:
          'https://images.unsplash.com/reserve/OlxPGKgRUaX0E1hg3b3X_Dumbo.JPG?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      likes: 150,
      shares: 25,
      comments: 13,
    ),
  ];
}
