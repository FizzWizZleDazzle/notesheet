# Java 17 Competitive Programming Reference

[![Build LaTeX](../../actions/workflows/build.yml/badge.svg)](../../actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

Comprehensive algorithm and data structure reference for competitive programming in Java 17.

## 📥 Download

**[Latest PDF Release](../../releases/latest)**

The PDF is automatically built on every commit via GitHub Actions.

## 🏗️ Build Locally

```bash
make build
```

Or manually:
```bash
pdflatex notesheet.tex
```

## 📚 What's Included

### Java API (4 sections)
- **Java 17 Features**: var, records, switch expressions, pattern matching
- **Core API**: String, Arrays, Collections (ArrayList, HashMap, TreeMap, etc.)
- **Streams API**: Complete guide to functional-style collection processing
- **BitSet**: Space-efficient bit vectors for large boolean arrays

### Algorithms (12 sections)
- **Graphs**: BFS, DFS, Dijkstra, Union-Find, MST, SCC, LCA, topological sort
- **Dynamic Programming**: Knapsack, LCS, LIS, bitmask DP, grid DP
- **Trees**: Diameter, LCA with binary lifting, Euler tour
- **Data Structures**: Segment tree, Fenwick tree
- **Geometry**: Convex hull, 2D/3D primitives
- **Number Theory**: GCD, modular arithmetic, sieve
- Plus: string algorithms, combinatorial search, and competitive programming tips

**All algorithms include O() complexity analysis.**

See [CONTENTS.md](CONTENTS.md) for the complete list.

## 📁 Project Structure

```
├── notesheet.tex              # Main document
├── sections/                  # Modular topic files (17 sections)
├── Makefile                   # Build automation
├── .github/workflows/         # GitHub Actions for auto-build
├── README.md
├── CONTENTS.md                # Detailed table of contents
└── CONTRIBUTING.md            # How to add new algorithms
```

## 🤝 Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new algorithms.

## 📄 License

MIT License - Free for educational and competitive programming use.
