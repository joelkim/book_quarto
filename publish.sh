#!/bin/bash
quarto render
ghp-import -c quartobook.madebykim.kr -f -n -o -p _site
