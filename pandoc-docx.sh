#!/bin/bash
PATH=$PATH:/usr/local/bin

cd "$(dirname "$BB_DOC_PATH")"
pandoc --filter pandoc-citeproc --toc --toc-depth=2 -o "${BB_DOC_PATH%%.*}".docx "$BB_DOC_PATH"
