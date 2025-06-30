void main(List<String> args) {
   task_8_1();
   task_8_2();
}

void task_8_1() {
 
  var list = ['Pascal', 'C++', 'Assembler', 'Delphi', '1C'];
  print(list);
  list.add("Flutter");
  print(list);
  list.removeAt(4);
  print(list);
}

void task_8_2() {
 
  var setTypeKnown = {'int', 'double', 'String', 'bool', 
                    'List', 'Set', 'Map', 'Null'};
    
  var setTypeCore = setTypeKnown.map((t) => (t)).toSet();
  setTypeCore.addAll({'Records', 'Function', 'Runes', 'Symbols'});
  
  print('Same types');
  final setSameType = setTypeKnown.intersection(setTypeCore);
  print(setSameType);

  print('different types');
  for (final typeIn in setTypeCore) {
    if (!setTypeKnown.contains(typeIn)) {
      print(typeIn);
    } 
  }
}