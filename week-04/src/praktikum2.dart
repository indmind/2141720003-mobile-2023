void main() {
  // // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  // // print(halogens);

  // var names1 = <String>{};
  // Set<String> names2 = {}; // This works, too.
  // var names3 = {}; // Creates a map, not a set.

  // print(names1);
  // print(names2);
  // print(names3);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  var names3 = {}; // Creates a map, not a set.

  names1.add('Tio Misbaqul Irawan');
  names2.addAll({'Tio Misbaqul Irawan', '2141720003'});

  print(names1);
  print(names2);
  print(names3);
}
