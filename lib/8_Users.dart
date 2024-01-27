class User {
  String email;
  User(this.email);
}

mixin GetMailSystem on User {
  getMailSystem(String email) {
    return email.split('@')[1];
  }
}

class AdminUser extends User with GetMailSystem {
  AdminUser(super.email);
}

class GeneralUser extends User {
  GeneralUser(super.email);
}

class UserManager<T extends User> {
  String user;
  UserManager(this.user, super.email);
  List<String> users = ['vasys@mail.cru', 'admin@admin.ru'];

  addUser() {
    users.add(user);
  }

  removeUser() {
    users.remove(user);
  }

  showUsers() {
    print(users);
  }
}

void main() {
  var smb = UserManager('admin', 'admin@admi.ru');
  var admUser = AdminUser('admin@admin.ru');
  print(admUser.getMailSystem('admin@admin.ru'));
}
