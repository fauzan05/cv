.PHONY: pdf pdf-portfolio pdf-z-health-queue pdf-seblak-bombom pdf-stone-store pdf-coilmatrixpro pdf-ctcosl pdf-voltrics clean clean-all

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

# Generate PDF from Portfolio Seblak Bombom HTML
pdf-seblak-bombom:
	@echo "Generating Portfolio Seblak Bombom PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-seblak-bombom-app.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-seblak-bombom-app.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-seblak-bombom-app.pdf"

# Generate PDF from Portfolio Stone Store Company Profile HTML
pdf-stone-store:
	@echo "Generating Portfolio Stone Store Company Profile PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-stone-store-company-profile.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-stone-store-company-profile.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-stone-store-company-profile.pdf"

# Generate PDF from Portfolio CoilMatrixPro HTML
pdf-coilmatrixpro:
	@echo "Generating Portfolio CoilMatrixPro PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-coilmatrixpro.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-coilmatrixpro.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-coilmatrixpro.pdf"

# Generate PDF from Portfolio CTCOSL HTML
pdf-ctcosl:
	@echo "Generating Portfolio CTCOSL PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-ctcosl.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-ctcosl.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-ctcosl.pdf"

# Generate PDF from Portfolio Voltrics HTML
pdf-voltrics:
	@echo "Generating Portfolio Voltrics PDF..."
	@/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
		--headless \
		--disable-gpu \
		--print-to-pdf="portfolio-voltrics.pdf" \
		--no-margins \
		--print-to-pdf-no-header \
		"file://$(shell pwd)/portfolio-voltrics.html" 2>/dev/null
	@echo "Done! PDF saved as portfolio-voltrics.pdf"

# Generate all PDFs
pdf-all: pdf pdf-portfolio pdf-z-health-queue pdf-seblak-bombom pdf-stone-store pdf-coilmatrixpro pdf-ctcosl pdf-voltrics
	@echo "All PDFs generated!"

# Clean generated CV PDF
clean:
	@rm -f my-cv.pdf
	@echo "Cleaned my-cv.pdf"

# Clean all generated PDFs
clean-all:
	@rm -f my-cv.pdf portfolio-coretest.pdf portfolio-z-health-queue-app.pdf portfolio-seblak-bombom-app.pdf portfolio-stone-store-company-profile.pdf portfolio-coilmatrixpro.pdf portfolio-ctcosl.pdf portfolio-voltrics.pdf
	@echo "Cleaned all PDFs"
