class Profile {
  final String id;
  final String username;
  final String fullName;
  final String? avatarPath;
  final String? avatarUrl;

  const Profile({
    required this.id,
    required this.username,
    required this.fullName,
    this.avatarPath,
    this.avatarUrl,
  });
}
