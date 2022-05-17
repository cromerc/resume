#!/bin/bash
rm resume.pdf

# this is run twice so that table of contents is updated
pdflatex -synctex=1 -interaction=nonstopmode "resume.tex"
pdflatex -synctex=1 -interaction=nonstopmode "resume.tex"
mv resume.pdf "Curriculum - Christopher Cromer.pdf"

sed -i 's/setboolean{en}{false}/setboolean{en}{true}/g' resume.tex

pdflatex -synctex=1 -interaction=nonstopmode "resume.tex"
pdflatex -synctex=1 -interaction=nonstopmode "resume.tex"
mv resume.pdf "Resume - Christopher Cromer.pdf"

sed -i 's/setboolean{en}{true}/setboolean{en}{false}/g' resume.tex
