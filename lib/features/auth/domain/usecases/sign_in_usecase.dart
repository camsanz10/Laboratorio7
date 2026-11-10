import 'package:moviles_auth/features/auth/data/repository/profile_repository_impl.dart';
import 'package:moviles_auth/features/auth/data/repository/auth_repository_impl.dart';
import 'package:moviles_auth/features/auth/domain/entities/profile.dart';
import 'package:moviles_auth/features/auth/domain/repository/auth_repository.dart';
import 'package:moviles_auth/features/auth/domain/repository/profile_repository.dart';

class SignInUseCase {
  final AuthRepository _auth = AuthRepositoryImpl();
  final ProfileRepository _profiles = ProfileRepositoryImpl();

  Future<Profile> call({
    required String email,
    required String password,
  }) async {
    final user = await _auth.signIn(email: email, password: password);
    return _profiles.getProfile(user.id);
  }
}
