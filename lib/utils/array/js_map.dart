/// Recreate the javascript array methos in flutter list
extension JSMethods on List {
  /// Creates a [this.map] with index in callback
  List<T> jsMap<T>(T Function(T e, int index) callback) {
    var newList = List<T>.from(this);
    for (var i = 0; i < length; i++) {
      newList[i] = callback(this[i], i);
    }
    return newList;
  }
}
