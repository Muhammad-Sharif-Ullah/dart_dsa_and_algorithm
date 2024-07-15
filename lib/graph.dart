// dart graph implementation
import 'dart:collection' show Queue;

import 'package:dsa_algorithms/stack.dart';

class DirectedGraph<T> {
  final Map<T, List<T>> graph;

  DirectedGraph({required this.graph});

  void addEdge(T from, T to) {
    if (graph[from] == null) {
      graph[from] = [];
    }
    graph[from]!.add(to);
  }

  void printGraph() {
    for (var key in graph.keys) {
      print('$key -> ${graph[key]}');
    }
  }

  List<T> depthFirstSearch(T start) {
    final visited = <T>[];
    final Stack<T> stack = Stack();
    stack.push(start);

    while (stack.isEmpty == false) {
      final vertex = stack.pop();

      if (!visited.contains(vertex)) {
        visited.add(vertex!);
        print('Visited: $vertex');
        print('Stack: ${graph[vertex]}');
        stack.pushAll(graph[vertex]!);
      }
    }

    return visited;
  }

  List<T> breadthFirstSearch(T start) {
    final visited = <T>[];
    final Queue<T> queue = Queue();
    queue.add(start);

    while (queue.isNotEmpty) {
      final vertex = queue.removeFirst();

      if (!visited.contains(vertex)) {
        visited.add(vertex);
        print('Visited: $vertex');
        print('Queue: ${graph[vertex]}');
        queue.addAll(graph[vertex]!);
      }
    }

    return visited;
  }
}
