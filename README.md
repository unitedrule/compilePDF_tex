## PDF_TEX Converter

This Bash script simplifies the process of converting LaTeX files with embedded PDF graphics, often created with the `pdf_tex` feature in tools like Inkscape or Illustrator, into standalone PDF files with custom font settings. It's particularly useful when you need to prepare figures before importing into Latex.

### Features

- Converts LaTeX files with embedded PDF graphics to standalone PDFs.
- Allows customization of the font family for the resulting PDFs.
- Removes auxiliary files generated during the conversion process.

### Prerequisites

Before using this script, ensure you have the following installed on your system:

- Bash shell
- `pdflatex` (LaTeX compiler)
- LaTeX packages: `graphicx`, `color`, and `mathptmx` (Times font)

### Usage

1. Place your LaTeX files with embedded PDF graphics (`.pdf_tex`) in the same directory as the script.
2. Edit the `font_family` variable in the script to set your desired font family (e.g., "times", "helvet", "palatino").
3. Run the script:

```bash
./pdf_tex_converter.sh
```

### How It Works

1. The script locates all `.pdf_tex` files in the current directory.
2. For each `.pdf_tex` file found, it creates a new `.tex` file with the embedded PDF and custom font settings.
3. The script compiles the new `.tex` file into a standalone PDF using `pdflatex`.
4. The resulting PDF is renamed to match the original file and moved up one directory.
5. Auxiliary files generated during the conversion process are removed.

### Customization

You can easily customize the script by modifying the `font_family` variable to change the font family applied to the resulting PDFs.

**Note:** This script assumes that you have the necessary LaTeX packages installed to handle the desired font family. Make sure your LaTeX distribution includes the appropriate fonts or adjust the script to your specific font requirements.

### License

This script is provided under the [MIT License](LICENSE.md).

### Author

[Your Name]

If you find this script helpful or have suggestions for improvements, please feel free to contribute or provide feedback.

**Disclaimer:** Use this script responsibly and ensure that you have the appropriate permissions to convert and distribute PDF files created by others.
