import 'package:dsa_algorithms/graph_practice.dart';

// Graph
/*
              A
            /   \
           B     C
          / \     \
          D   E---- F

*/
// DFS = [A, C, F, B, E, D]
void main(List<String> arguments) {
  // DirectedGraph graph = DirectedGraph(
  //   graph: {
  //     'A': ['B', 'C'],
  //     'C': ['F'],
  //     'D': [],
  //     'E': ['F'],
  //     'F': [],
  //     'B': ['D', 'E'],
  //   },
  // );
  GraphPractice graph = GraphPractice(
    graphs: {
      'A': ['B', 'C'],
      'C': ['F'],
      'D': [],
      'E': ['F'],
      'F': [],
      'B': ['D', 'E'],
    },
    // graphs: {
    //   "A": ["B", "C"],
    //   "B": ["D"],
    //   "D": ["F"],
    //   "C": ["E"]
    // },
  );
  // graph.printGraph();
  // graph.depthFirstSearch(start: "A");
}
