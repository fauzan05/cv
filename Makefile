.PHONY: pdf pdf-portfolio pdf-z-health-queue clean clean-all

# Generate PDF from HTML CV using Chrome headless
pdf:
	@echo "Generating CV PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="my-cv.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/my-cv.html" 2>/dev/null
	@echo "Done! PDF saved as my-cv.pdf"

# Generate PDF from Portfolio Coretest HTML
pdf-portfolio:
	@echo "Generating Portfolio Coretest PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-coretest.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-coretest.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-coretest.pdf"

# Generate PDF from Portfolio Z Health Queue HTML
pdf-z-health-queue:
	@echo "Generating Portfolio Z Health Queue PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-z-health-queue-app.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-z-health-queue-app.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-z-health-queue-app.pdf"

# Generate all PDFs
pdf-all: pdf pdf-portfolio pdf-z-health-queue
	@echo "All PDFs generated!"

# Clean generated CV PDF
clean:
	@rm -f my-cv.pdf
	@echo "Cleaned my-cv.pdf"

# Clean all generated PDFs
clean-all:
	@rm -f my-cv.pdf portfolio-coretest.pdf portfolio-z-health-queue-app.pdf
	@echo "Cleaned all PDFs"
