.PHONY: pdf clean

# Generate PDF from HTML CV using Chrome headless
pdf:
	@echo "Generating PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="my-cv.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/my-cv.html" 2>/dev/null
	@echo "Done! PDF saved as my-cv.pdf"

# Clean generated PDF
clean:
	@rm -f my-cv.pdf
	@echo "Cleaned my-cv.pdf"
