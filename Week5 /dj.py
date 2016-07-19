"""
Dijkstra shortest path Algorithm
"""

def load_graph(filename):
    """
    reads the graph from the text file
    """

    graph = {}
    with open(filename, 'r') as file:
        lines = file.readlines()
        for line in lines:
            node = line.split('\t')[0]
            edges = line.split('\t')[1:-1]
            dict_values = []
            for edge in edges:
                edge = edge.split(',')
                dict_values.append((int(edge[0]), int(edge[1])))
            graph[int(node)] = dict_values
        return graph


def dijkstra(graph, source):
    """
    calcuating shortest path from source node
    """
    dist = {}
    previous = {}
    for node in graph.keys():
        dist[node] = 1e20
        previous[node] = None
    dist[source] = 0
    nodes = list(graph.keys())
    while nodes:
        temp_dist = {key: dist[key] for key in nodes}
        node_u, _ = min(temp_dist.items(), key=lambda t: t[1])
        nodes.remove(node_u)
        neighbors = graph[node_u]
        for neighbor in neighbors:
            alt = dist[node_u] + neighbor[1]
            if alt < dist[neighbor[0]]:
                dist[neighbor[0]] = alt
                previous[neighbor[0]] = node_u
    return dist



if __name__ == '__main__':

    GRAPH = load_graph('dijkstraData.txt')
    DIST = dijkstra(GRAPH, 1)
    print(DIST[7], DIST[37], DIST[59], DIST[82], DIST[99],
          DIST[115], DIST[133], DIST[165], DIST[188],
          DIST[193])
