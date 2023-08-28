class Biodata {
  final String name;
  final String nim;
  final String room;

  const Biodata({
    required this.name,
    required this.nim,
    required this.room,
  });

  void display() {
    print("Name: $name");
    print("NIM: $nim");
    print("Room: $room");
    print("\nHello World!");
  }
}
