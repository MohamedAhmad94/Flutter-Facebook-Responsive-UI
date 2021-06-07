import 'package:facebook_home/models/user_model.dart';
import 'package:flutter/material.dart';

class Post {
  final User? user;
  final String? caption;
  final String? imageUrl;
  final String? postingDate;
  final int? likes;
  final int? comments;
  final int? shares;

  Post(
      {@required this.user,
      @required this.caption,
      @required this.imageUrl,
      @required this.postingDate,
      @required this.likes,
      @required this.comments,
      @required this.shares});
}
