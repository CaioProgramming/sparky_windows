class Host {
  String name, profilePic, socialUrl, description;

  Host(
      {required this.name,
      required this.profilePic,
      required this.socialUrl,
      required this.description});

  Map<String, dynamic> toMap() {
    return {
      'name': this.name,
      'profilePic': this.profilePic,
      'socialUrl': this.socialUrl,
      'description': this.description,
    };
  }

  factory Host.fromMap(Map<String, dynamic> map) {
    return Host(
      name: map['name'] as String,
      profilePic: map['profilePic'] as String,
      socialUrl: map['socialUrl'] as String,
      description: map['description'] as String,
    );
  }
}
