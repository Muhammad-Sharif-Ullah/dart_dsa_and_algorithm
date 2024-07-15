// Graph is a data structure that consists of the following two components:
// 1. A finite set of vertices also called as nodes.
// 2. A finite set of ordered pair of the form (u, v) called as edge. The pair is ordered because (u, v) is not same as (v, u) in case of a directed graph(di-graph). The pair of the form (u, v) indicates that there is an edge from vertex u to vertex v. The edges may contain weight/value/cost.
// Graphs are used to solve many real-life problems. Graphs are used to represent networks. The networks may include paths in a city or telephone network or circuit network. Graphs are also used in social networks like linkedIn, Facebook. For example, in Facebook, each person is represented with a vertex(or node). Each node is a structure and contains information like person id, name

class GraphPractice<T> {
  Map<T, List<T>> graphs = {};
  GraphPractice({this.graphs = const {}});

  // add node to the graph
  void addNode(T node) {
    if (!graphs.containsKey(node)) {
      graphs[node] = [];
    } else {
      print("Node already exists");
    }
  }

  // add edge to the graph
  // directed graph
  void addEdge(T from, T to) {
    if (graphs.containsKey(from) && graphs.containsKey(to)) {
      graphs[from]?.add(to);
    } else {
      print("Node does not exist");
    }
  }

  // print graph
  // print all the nodes and their connections
  void printGraph() {
    graphs.forEach((key, value) {
      print("$key -> $value");
    });
  }

  bool get isGraphEmpty {
    return graphs.isEmpty;
  }
}
