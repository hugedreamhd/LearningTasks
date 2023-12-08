class StrongBox <E> {

  E? _data;

  void pub(E data) {
    _data = data;
  }

  E? get() {
    return _data;
  }

}