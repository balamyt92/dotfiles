#!/bin/bash
for file in $(find -name \*.png); do optipng -o7 $file; done 
