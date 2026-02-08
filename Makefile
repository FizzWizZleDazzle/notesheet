.PHONY: all clean build view help

# Default target
all: build

# Build the PDF
build:
	@echo "Building notesheet.pdf..."
	pdflatex -interaction=nonstopmode notesheet.tex > /dev/null
	@echo "✓ Build complete: notesheet.pdf"

# Build with full output (for debugging)
build-verbose:
	pdflatex -interaction=nonstopmode notesheet.tex

# Build twice for proper references
build-full:
	@echo "Building notesheet.pdf (pass 1/2)..."
	pdflatex -interaction=nonstopmode notesheet.tex > /dev/null
	@echo "Building notesheet.pdf (pass 2/2)..."
	pdflatex -interaction=nonstopmode notesheet.tex > /dev/null
	@echo "✓ Build complete: notesheet.pdf"

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -f *.aux *.log *.out *.toc *.synctex.gz *.fls *.fdb_latexmk
	rm -f *.pk *.tfm *.600gf
	@echo "✓ Clean complete"

# Clean everything including PDF
clean-all: clean
	rm -f notesheet.pdf
	@echo "✓ Removed notesheet.pdf"

# Open PDF (Linux)
view:
	@if [ -f notesheet.pdf ]; then \
		xdg-open notesheet.pdf 2>/dev/null || echo "Install xdg-utils or open notesheet.pdf manually"; \
	else \
		echo "Error: notesheet.pdf not found. Run 'make build' first."; \
	fi

# Help
help:
	@echo "Java 17 Competitive Programming Reference - Makefile"
	@echo ""
	@echo "Targets:"
	@echo "  make build        - Build notesheet.pdf (default)"
	@echo "  make build-full   - Build twice for proper references"
	@echo "  make build-verbose- Build with full LaTeX output"
	@echo "  make clean        - Remove build artifacts"
	@echo "  make clean-all    - Remove build artifacts and PDF"
	@echo "  make view         - Open notesheet.pdf"
	@echo "  make help         - Show this help"
