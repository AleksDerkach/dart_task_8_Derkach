void main(List<String> args) {
   task8part1();
   task8part2();
   task8part3();
   task8part4();
}

void task8part1() {
 
  var list = ['Pascal', 'C++', 'Assembler', 'Delphi', '1C'];
  print(list);
  list.add('Flutter');
  print(list);
  list.removeAt(4);
  print(list);
}

void task8part2() {
 
  final setTypeKnown = {'int', 'double', 'String', 'bool', 
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

void task8part3() {
 
  var mapCommand = {'add': 'додає значення в List',
              'insert': 'поміщає у вказану позицію в List',
              'remove': 'видаляє перший знайдений елемент в List'
              };
   mapCommand.addAll({'clear': 'очищає List'});
   mapCommand['add'] = 'розширює List додавши значення останнім в список';
    
  final keys = mapCommand.keys.toList();
  String maxLengthCommand = '';
  String maxLengthKey = '';
  for (var i=0; i<mapCommand.length-1; i++) {
    String key = keys[i];
    String value = mapCommand[keys[i]].toString();
    print('key: $key; value: $value');
    for (var y=i; y==i; y++) {
      print('key: $key; value: $value');
    }
    if (maxLengthCommand.length < value.length) {
      maxLengthCommand = value;
      maxLengthKey = key;
    }
  }
  print('Команда: $maxLengthKey - має найбільший опис: $maxLengthCommand');
}

void task8part4() {
 
  final listName = ['Саня','Льоха', 'Настя', 'Настя', 'Андрій', 'Андрій', 'Андрій', 'Аня',
                  'Антон', 'Артем', 'Артур', 'Борис', 'Костя', 'Даніель', 'Діма',
                  'Діма', 'Діма', 'Влад', 'Ігор', 'Іван', 'Карина', 'Віталій', 
                  'Макс', 'Матвій', 'Олег', 'Саня', 'Льоха', 'Паша', 'Паша', 'Паша',
                  'Паша', 'Ренат', 'Рост', 'Саня', 'Стас', 'Таня', 'Таня',
                  'Вадим', 'Віталій', 'Влад', 'Ярік', 'Юра', 'Юра', 'Андрій', 'Бодя',
                  'Галя', 'Жека', 'Жека', 'Ігор'];

  final mapName = Map<String, int>();
  for (var name in listName){
    if (mapName.containsKey(name)) {
      mapName.update(name, (val) => val + 1);

    } else {
      mapName.addAll({name: 1});
    }
  } 
  
  mapName.forEach((key, value) {
    if (value == 1) {
      print('$key $value');
    };  
  }); 

  mapName.forEach((key, value) {
    if (value > 1) {
      print('$key - $value');
    };  
  });
  
}