class Mahasiswa {
  late String name;
  Function(String name)? doingHobby;
  Mahasiswa(this.name, {this.doingHobby});
  void takeARest() {
    if (doingHobby != null) {
      doingHobby!(name);
    }
  }
}
