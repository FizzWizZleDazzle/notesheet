# Table of Contents

## Java API Reference

### Java 17 Features (`01_java17_features.tex`)
- var (local type inference)
- Records (immutable data carriers)
- Switch expressions
- Pattern matching for instanceof
- Immutable collections (List.of, Set.of, Map.of)

### Core Java API (`02_core_api.tex`)
- **String**: length, charAt, substring, indexOf, contains, toLowerCase, toUpperCase, trim, strip, split, replace, repeat, equals, compareTo, parsing
- **StringBuilder**: append, insert, delete, replace, reverse, charAt, setCharAt
- **Character**: isDigit, isLetter, isLetterOrDigit, isWhitespace, toUpperCase, toLowerCase
- **Arrays**: sort, binarySearch, fill, copyOf, copyOfRange, equals, compare
- **ArrayList**: add, get, set, remove, size, contains, indexOf, Collections utilities
- **HashMap/HashSet**: put, get, remove, containsKey, merge, computeIfAbsent, iteration, set operations
- **TreeMap/TreeSet**: sorted operations, firstKey, lastKey, floor, ceiling, lower, higher, range views
- **Queue/Deque/Stack**: offer, poll, peek, push, pop, double-ended operations
- **PriorityQueue**: min-heap, max-heap, custom comparators
- **Math**: abs, max, min, pow, sqrt, hypot, ceil, floor, round, log, trig, constants, limits

### Streams API (`03_streams.tex`)
- Creating streams (from collections, arrays, ranges, generators)
- Intermediate operations (filter, map, flatMap, distinct, sorted, limit, skip, peek)
- Terminal operations (collect, count, findFirst, anyMatch, allMatch, min, max, reduce, forEach)
- Primitive streams (IntStream, LongStream, DoubleStream)
- Common patterns (sum, filter/collect, grouping, partitioning, frequency counting)

### BitSet (`04_bitset.tex`)
- Creation and capacity
- Set/clear/flip operations
- Query operations (get, cardinality, length, nextSetBit, previousSetBit)
- Set operations (and, or, xor, andNot, intersects)
- Iteration over set bits
- BitSet vs manual bitmask comparison
- Optimized sieve example

## Algorithms

### Number Theory (`10_number_theory.tex`)
- GCD and LCM (Euclidean algorithm) - O(log min(a,b))
- Modular exponentiation (fast power) - O(log exp)
- Modular inverse (Fermat's little theorem) - O(log mod)
- Sieve of Eratosthenes - O(n log log n)
- Pascal's triangle (binomial coefficients) - O(n²)

### Graph Algorithms (`11_graph_algorithms.tex`)
- Graph representation (adjacency list, adjacency matrix)
- BFS (breadth-first search) - O(V+E)
- DFS (depth-first search) - O(V+E)
- Flood fill / connected components - O(R·C)
- Dijkstra's algorithm - O((V+E) log V)
- Bellman-Ford - O(V·E)
- Floyd-Warshall - O(V³)
- Union-Find (DSU) - O(α(n)) ≈ O(1)
- Kruskal's MST - O(E log E)
- Topological sort (Kahn's) - O(V+E)
- Graph coloring (backtracking) - O(m^V)

### Dynamic Programming (`12_dynamic_programming.tex`)
- 0/1 Knapsack - O(nC)
- Longest Common Subsequence (LCS) - O(mn)
- Coin change (unbounded knapsack) - O(n·amt)
- Longest Increasing Subsequence (LIS) - O(n log n)
- Subset sum - O(n·target)
- Bitmask DP - O(2^n · n)
- Grid DP - O(R·C)

### Array Techniques (`13_array_techniques.tex`)
- Prefix sums (1D and 2D) - O(n) build, O(1) query
- Kadane's algorithm (maximum subarray) - O(n)
- Sliding window / two pointers - O(n)

### Combinatorial Search (`14_combinatorial.tex`)
- Generating permutations - O(n·n!)
- Generating subsets (bitmask) - O(n·2^n)
- Bit manipulation tricks - O(1)

### Geometry (`15_geometry.tex`)
- 3D collinearity (cross product) - O(1)
- 2D distance, triangle area, cross product - O(1)
- Convex hull (Andrew's monotone chain) - O(n log n)

### String Algorithms (`16_string_algorithms.tex`)
- Bracket/parentheses matching - O(n)
- String hashing (Rabin-Karp) - O(n) build, O(1) query

### Advanced Algorithms (`17_advanced_algorithms.tex`)
- Gaussian elimination (mod 2 / XOR) - O(n²m)
- Multi-source BFS - O((V+E) log V)
- Game theory (minimax) - O(states·moves)

### Tree Algorithms (`18_tree_algorithms.tex`)
- Building tree from parent array - O(n)
- Tree diameter (2-BFS method) - O(n)
- Lowest Common Ancestor (binary lifting) - O(n log n) preprocess, O(log n) query
- Euler tour - O(n)

### Advanced Graph Algorithms (`19_advanced_graph.tex`)
- Strongly connected components (Tarjan's) - O(V+E)
- Bridges and articulation points (Tarjan's) - O(V+E)
- Cycle detection (directed and undirected) - O(V+E)
- Bipartite graph check - O(V+E)

### Advanced Data Structures (`20_advanced_ds.tex`)
- Segment tree - O(n) build, O(log n) query/update
- Fenwick tree (BIT) - O(log n) query/update

### Common Patterns & Tips (`21_tips.tex`)
- Integer overflow prevention
- Modular arithmetic
- Frequency counting
- Grid direction arrays
- Floating-point comparison
- Coordinate compression
- Cycle detection patterns
- Bipartite checking
- I/O optimization
- Defensive cloning
