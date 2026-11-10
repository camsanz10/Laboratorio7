import 'package:moviles_auth/features/posts/data/repository/post_repository_impl.dart';
import 'package:moviles_auth/features/posts/domain/entities/post.dart';
import 'package:moviles_auth/features/posts/domain/repository/post_repository.dart';

class ToggleLikeUseCase {
  final PostRepository _posts = PostRepositoryImpl();

  Future<Post> call(Post post) async {
    if (post.likedByMe) {
      await _posts.unlike(post.id);
      return post.copyWith(likeCount: post.likeCount - 1, likedByMe: false);
    }
    await _posts.like(post.id);
    return post.copyWith(likeCount: post.likeCount + 1, likedByMe: true);
  }
}
