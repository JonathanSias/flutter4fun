// vai servir como interpretador das operaçoes que o usuario executou
// atraves de cliques em keyboard e responsavel por mostrar os dados
// no display
class Memory {
  String _value = '0';

  void applyCommand(String command) {
    if (command == 'AC') {
      _allClear();
    } else {
      _value += command;
    }
  }

  _allClear() {
    _value = '0';
  }

  String get value {
    return _value;
  }
}
