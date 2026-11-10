import 'package:moviles_auth/features/posts/domain/entities/post.dart';

abstract class FeedEvent {}

class ProfileRequested extends FeedEvent {
  @override
  String toString() {
    return 'ProfileRequested()';
  }
}

class SignOutRequested extends FeedEvent {
  @override
  String toString() {
    return 'SignOutRequested()';
  }
}

class FeedStarted extends FeedEvent {
  @override
  String toString() {
    return 'FeedStarted()';
  }
}

class FeedMoreRequested extends FeedEvent {
  @override
  String toString() {
    return 'FeedMoreRequested()';
  }
}

class FeedLikeToggled extends FeedEvent {
  final Post post;

  FeedLikeToggled(this.post);

  @override
  String toString() {
    return 'FeedLikeToggled($post)';
  }
}

class AvatarChangeRequested extends FeedEvent {
  @override
  String toString() {
    return 'AvatarChangeRequested()';
  }
}
