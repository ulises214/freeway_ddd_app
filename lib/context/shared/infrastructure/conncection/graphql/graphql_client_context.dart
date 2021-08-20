/// Gets the context for the client
enum GraphQLClientContext {
  /// Context ussed for login,register an user, and get the login token
  unloggedOperation,

  /// Context used the user is loggin in the application
  loggedOperation,
}
