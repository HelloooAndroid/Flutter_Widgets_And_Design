class User {
  final String name;
  final String email;

  User(this.name, this.email);

  /*With this approach, the calling code can have type safety,
  autocompletion for the name and email fields, and compile-time exceptions.
  If you make typos or treat the fields as ints instead of Strings, the app won’t compile,
  instead of crashing at runtime.*/
  User.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        email = json['email'];

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'email': email,
      };
}