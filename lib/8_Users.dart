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
  UserManager(this.user);
  List<String> users = ['vasys@mail.com', 'admin@admin.ru'];

  addUser() {
    users.add(user);
  }

  removeUser() {
    users.remove(user);
  }

  showUsers() {
    print(users);
  }

  List<String> checkEmails() {
    final List<String> emails =[];
    users.forEach((user) {if (`user is admin`) {
      emails.add(user.getMailSystem()); // check his email
    } else {
      emails.add(user); // add simple user
    } });
    return emails;
  }
}

void main() {
  var smb = UserManager('admin');
  var admUser = AdminUser('admin@admin.ru');
  print(admUser.getMailSystem('admin@admin.ru'));
}
