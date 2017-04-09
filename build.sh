#!/bin/sh

pandoc -t revealjs -s index.md -o index.html -c style.css
