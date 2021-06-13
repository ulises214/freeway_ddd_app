/// The 2 types that a user can be
enum UserType {
  /// User of type [UserType.client] can consume travel and
  client,

  /// User of type [UserType.carrier] can offer travels
  carrier,
}

/// The 2 types of person that a user can be
enum PersonType {
  /// Person of type [PersonType.moral] is a group of persons
  moral,

  /// Person of type [PersonType.physic] is a human person
  physic
}
