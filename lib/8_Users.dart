class User {
  String email;
  User(this.email);
}

mixin GetMailSystem on User {
  getMailSystem();
}

class AdminUser extends User {}

class GeneralUser extends User {}
