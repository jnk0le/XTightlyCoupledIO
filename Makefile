HEADER_SOURCE := xtightlycoupledio.adoc
PDF_RESULT := XTightlyCoupledIO.pdf

SOURCES := $(HEADER_SOURCE)

all: $(PDF_RESULT)

.PHONY: $(PDF_RESULT)
$(PDF_RESULT): $(SOURCES)
	asciidoctor-pdf \
	--require=asciidoctor-diagram \
    --out-file=$@ \
    $(HEADER_SOURCE)