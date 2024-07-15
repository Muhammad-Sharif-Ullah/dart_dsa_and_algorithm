// dart implementation of Stack

import "dart:collection" show Queue;

class Stack<T> {
  final _stack = Queue<T>();

  // push element in the end
  void push(T element) {
    _stack.addLast(element);
  }

  // push multiple elements to the stack
  void pushAll(Iterable<T> elements) {
    _stack.addAll(elements);
  }

  // removes and returns the top element of the stack
  T? pop() {
    if (_stack.isNotEmpty) {
      return _stack.removeLast();
    }
    return null;
  }

  // returns the top element of the stack without removing it
  T? peek() {
    if (_stack.isNotEmpty) {
      return _stack.last;
    }
    return null;
  }

  // returns true if the stack is empty
  bool get isEmpty => _stack.isEmpty;

  // clears the stack
  void clear() {
    _stack.clear();
  }

  // returns the number of elements in the stack
  int get length => _stack.length;
}
