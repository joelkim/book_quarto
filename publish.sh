#!/bin/bash
quarto render
ghp-import -c quarto.bykim.dev -f -n -o -p _site
