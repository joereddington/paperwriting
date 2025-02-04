# Set up the correct PATH
export PATH := $(HOME)/Library/Python/3.9/bin:$(PATH)

# Input and output files
INPUT = grouppaperwriting.md
OUTPUT = index.html

# Default target
all: $(OUTPUT)

# Run landslide to generate the presentation
$(OUTPUT): $(INPUT)
	landslide -d $(OUTPUT) $(INPUT)

# Clean up generated files
clean:
	rm -f $(OUTPUT)
	rm -rf theme

# Watch mode to regenerate slides on changes
watch:
	landslide -w $(INPUT)

