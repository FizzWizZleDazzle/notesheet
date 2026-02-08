# Contributing

## Adding a New Algorithm

1. Create a new `.tex` file in `sections/` with appropriate numbering:
   - `01-04`: Java API sections
   - `10-21`: Algorithm sections

2. Follow the template:

```latex
\subsection{Algorithm Name}
\begin{desc}
Description of what the algorithm does, when to use it, and key insights.
\end{desc}
\complexity{Time complexity}{Space complexity}
\begin{lstlisting}
// Java 17 code here
static void algorithm() {
  var example = new ArrayList<>();
  // ...
}
\end{lstlisting}
```

3. Add the include to `notesheet.tex`:

```latex
\input{sections/XX_your_section.tex}
```

4. Build and verify:

```bash
make build
```

5. Check that code blocks don't split across pages in the PDF.

## Style Guide

- Use `var` for local variable type inference
- Use `record` for immutable data carriers
- Include inline comments explaining non-obvious code
- Keep descriptions concise but informative
- Always include time and space complexity
- Use `\texttt{}` for inline code
- Use `\textbf{}` for emphasis
