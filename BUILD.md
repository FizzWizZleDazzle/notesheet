# Build System

The notesheet uses a config-driven build system that generates different versions without editing .tex files.

## Build Profiles

Edit `build-config.yaml` to customize which sections are included:

### Minimal Profile
Core algorithms and API for quick reference:
- Java 17 Features
- Core API (String, Arrays, Collections, Math)
- Number Theory (GCD, modular arithmetic, sieve)
- Graph Algorithms (BFS, DFS, Dijkstra, Union-Find, MST, Topological Sort)
- Dynamic Programming (Knapsack, LCS, LIS, Subset Sum, Bitmask DP, Grid DP)
- Array Techniques (Prefix sums, Kadane, Sliding window)
- Tips & Patterns

### Full Profile
Everything in minimal, plus:
- Streams API
- BitSet
- Combinatorial Search
- Geometry
- String Algorithms
- Advanced Algorithms (Gaussian elimination, Multi-source BFS, Game theory)
- Tree Algorithms (LCA, Euler tour, Tree diameter)
- Advanced Graph (SCC, Bridges, Cycle detection, Bipartite check)
- Advanced Data Structures (Segment tree, Fenwick tree)

## Usage

```bash
# Build minimal version (default)
make build-minimal

# Build full version
make build-full

# Or manually
python3 build.py minimal   # generates notesheet.tex with minimal sections
python3 build.py full      # generates notesheet.tex with full sections
pdflatex notesheet.tex
```

## Adding Custom Profiles

Add a new profile to `build-config.yaml`:

```yaml
profiles:
  custom:
    - 01_java17_features
    - 02_core_api
    - 11_graph_algorithms
    # ... your sections
```

Then build with: `python3 build.py custom`

## How It Works

1. `build-config.yaml` defines which sections (`sections/*.tex`) to include in each profile
2. `build.py` reads the config and generates `notesheet.tex` with the appropriate `\input{}` statements
3. `pdflatex` compiles the generated `notesheet.tex`

The original section files in `sections/` are never modified - only `notesheet.tex` is regenerated.
