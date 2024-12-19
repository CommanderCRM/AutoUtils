#!/bin/bash

find . -name "CMakeCache.txt" -type f -exec rm -f {} +
find . -name "CMakeFiles" -type d -exec rm -rf {} +
