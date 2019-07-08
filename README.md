# dividepdf
A tool that takes a pdf file and a set of page ranges and generates output pdfs consisting of the pages specified.

# Usage:
Use the command `./dividepdf.sh source page-range [ subsequent page-ranges ]` where `source` is the pdf file to process and each `page-range` is of the form `<start>-<finish>'. Each output file will be named <start>-<finish>.pdf.
