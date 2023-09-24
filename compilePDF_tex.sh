#!/bin/bash

# Font settings
font_family="times" # Change this to the desired font family (e.g., "times", "helvet", "palatino")

# Find all .pdf_tex files in the current directory
pdf_tex_files=$(find . -maxdepth 1 -type f -name "*.pdf_tex")

# Loop through each found .pdf_tex file
for pdf_tex_file in $pdf_tex_files; do
  # Extract the filename without extension
  base_filename=$(basename -s .pdf_tex "$pdf_tex_file")

  # Create a converted .tex file
  cat > "${base_filename}_converted.tex" << EOF
 % Declare document class
 \documentclass[10pt]{standalone}

 % Define packages
 \usepackage{graphicx}
 \usepackage{color}
 \usepackage{mathptmx}

 % Set font family to "Times" (you can change this to whatever you want or remove ro keep the default font)
 \renewcommand{\rmdefault}{ptm} 

 % Import the target image
 \begin{document}
 \input{$base_filename.pdf_tex}
 \end{document}
EOF

  # Compile the .tex file to PDF using pdflatex
  pdflatex "${base_filename}_converted.tex"
  
  # Rename and Move the resulting PDF file
  mv "${base_filename}_converted.pdf" "../${base_filename}.pdf"

  # Remove auxiliary files
  rm "${base_filename}_converted.aux" "${base_filename}_converted.log" "${base_filename}_converted.tex"

done
