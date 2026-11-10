import 'package:moviles_auth/features/avatar/domain/entities/picked_photo.dart';

abstract class AvatarRepository {
  Future<PickedPhoto?> pick();
  Future<String> upload(PickedPhoto photo);
  Future<void> remove(String path);
}
