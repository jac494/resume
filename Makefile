PDF=Drew_Conner_SRE_Resume.pdf

all: $(PDF)

$(PDF): resume.md resume.css metadata.yaml
	pandoc resume.md \
	  --metadata-file=metadata.yaml \
	  --from=markdown \
	  --to=html \
	  --css=resume.css \
	  --pdf-engine=weasyprint \
	  -o $(PDF)

clean:
	rm -f $(PDF)
