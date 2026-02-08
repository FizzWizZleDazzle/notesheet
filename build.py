#!/usr/bin/env python3
"""
Build script for generating notesheet variants based on build-config.yaml
"""

import yaml
import sys
from pathlib import Path

def generate_notesheet(profile='full', output='notesheet.tex'):
    """Generate notesheet.tex with specified profile sections"""

    # Read config
    with open('build-config.yaml', 'r') as f:
        config = yaml.safe_load(f)

    if profile not in config['profiles']:
        print(f"Error: Profile '{profile}' not found in build-config.yaml")
        print(f"Available profiles: {', '.join(config['profiles'].keys())}")
        sys.exit(1)

    sections = config['profiles'][profile]

    # Generate notesheet.tex
    content = r"""\input{sections/00_preamble.tex}

\begin{document}

\begin{center}
{\LARGE\bfseries Java 17 Competitive Programming Reference}\\[2pt]
{\normalsize Algorithms \& Data Structures}
\end{center}

\begin{multicols}{2}
\raggedcolumns

"""

    # Add section includes
    for section in sections:
        content += f"\\input{{sections/{section}.tex}}\n"

    content += r"""
\end{multicols}
\end{document}
"""

    # Write output
    with open(output, 'w') as f:
        f.write(content)

    print(f"Generated {output} with profile '{profile}' ({len(sections)} sections)")

if __name__ == '__main__':
    profile = sys.argv[1] if len(sys.argv) > 1 else 'full'
    output = sys.argv[2] if len(sys.argv) > 2 else 'notesheet.tex'
    generate_notesheet(profile, output)
