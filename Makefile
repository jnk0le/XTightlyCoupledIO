HEADER_SOURCE := xtightlycoupledio.adoc
PDF_RESULT := ./example.pdf

SOURCES := $(HEADER_SOURCE)

all: $(PDF_RESULT)

.PHONY: $(PDF_RESULT)
$(PDF_RESULT): $(SOURCES)
	asciidoctor-pdf \
    --attribute=mathematical-format=svg \
    --attribute=pdf-fontsdir=resources/fonts \
    --attribute=pdf-style=resources/themes/riscv-pdf.yml \
    --failure-level=ERROR \
    --require=asciidoctor-bibtex \
    --require=asciidoctor-diagram \
    --out-file=$@ \
    $(HEADER_SOURCE)