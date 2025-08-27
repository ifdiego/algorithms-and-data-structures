class Edge {
    node: string;
    weight: number;
}

class Graph {
    [key: string]: Edge[];
}

function dijkstra(graph: Graph, start: string, end: string): { distance: number; path: string[] } {
    const distances: Record<string, number> = {};
    const previous: Record<string, string | null> = {};
    const vertices = new Set(Object.keys(graph));

    for (const node in graph) {
        distances[node] = Infinity;
        previous[node] = null;
    }
    distances[start] = 0;

    while (vertices.size > 0) {
        let current = Array.from(vertices).reduce((min, node) =>
            distances[node] < distances[min] ? node : min);

        vertices.delete(current);

        if (current === end)
            break;

        for (const edge of graph[current]) {
            const temp = distances[current] + edge.weight;
            if (temp < distances[edge.node]) {
                distances[edge.node] = temp;
                previous[edge.node] = current;
            }
        }
    }

    const path: string[] = [];
    let un: string | null = end;
    while (un) {
        path.unshift(un);
        un = previous[un]
    }

    return {
        distance: distances[end],
        path
    }
}

function main(): void {
    const graph: Graph = {
        A: [{ node: "B", weight: 2}, { node: "C", weight: 5 }],
        B: [{ node: "C", weight: 1}, { node: "D", weight: 4 }],
        C: [{ node: "D", weight: 1}],
        D: [],
    }
    console.log(dijkstra(graph, "A", "D"));
}

main();
