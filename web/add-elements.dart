// https://dart.dev/tutorials/web/low-level-html/add-elements

import 'dart:html';

final InputElement toDoInput = querySelector('#to-do-input') as InputElement;
final UListElement toDoList = querySelector('#to-do-list') as UListElement;

void main() {
  toDoInput.onChange.listen(addToDoItem);
}

void addToDoItem(Event e) {
  final newToDo = LIElement()..text = toDoInput.value;
  toDoInput.value = '';
  toDoList.children.add(newToDo);
}
