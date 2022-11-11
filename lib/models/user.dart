class User {
final int id;
final String username;
final String firstName;
final String lastName;
final String? lookingFor;
final String sex;
final String avatar;
final String? email;
final String neighborhood;
final String? currentSchool;



User({
  required this.id,
  required this.username,
  required this.firstName,
  required this.lastName,
  this.lookingFor,
  required this.sex,
  required this.avatar,
   this.email,
  required this.neighborhood,
  this.currentSchool

});

factory User.fromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'],
    username: json['username'],
    firstName: json['first_name'],
    lastName: json['last_name'],
    lookingFor: json['looking'],
    sex: json['sex'],
    avatar: json['avatar'],
    email: json['email'],
    neighborhood: json['neighborhood'],
    currentSchool: json['current_school']

);
  }

Map<String, dynamic> toJson() {
  return {
    'id': id,
    'username': username,
    'first_name': firstName,
    'last_name': lastName,
    'lookingFor': lookingFor,
     'sex':sex,
    'avatar': avatar,
    'email': email,
    'neighborhood': neighborhood,
    'current_school': currentSchool
  };
}




}