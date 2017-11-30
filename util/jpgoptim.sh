#!/bin/bash
for i in $(find . -name \*.jpg); do jpegoptim --strip-all -m75 "$i"; done 
