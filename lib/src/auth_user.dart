import 'package:equatable/equatable.dart';

/// Authenticated user class
class AuthUser extends Equatable {
  final String id;
  final String? email;
  final String? name;
  final bool emailVerified;

  const AuthUser({
    required this.id,
    this.email,
    this.name,
    this.emailVerified = false,
  });

  static const empty = AuthUser(id: '');

  //Create a getter method to check if user is empty or not
  /// Tells if there is no current user logged in to application
  bool get isEmpty => this == AuthUser.empty;

  @override
  List<Object?> get props => [email, id, name, emailVerified];
}
