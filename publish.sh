#!/bin/bash
quarto render
ghp-import -c quarto.datascienceschool.net -f -n -o -p _site
