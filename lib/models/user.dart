class User {
  final String nim;
  final String name;
  final String email;
  final String role;
  final String? phone;

  const User({
    required this.nim,
    required this.name,
    required this.email,
    required this.role,
    this.phone,
  });

  String get greeting => 'Halo, $name';

  String get phoneDisplay =>
      (phone == null || phone!.isEmpty) ? 'Belum diisi' : phone!;

  String get statusProfile =>
      (phone == null || phone!.isEmpty) ? 'Belum lengkap' : 'Lengkap';
}