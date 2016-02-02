#!/bin/bash

# Remove local and remote tag
git tag -d current_pdfs
git push origin :current_pdfs

# Create new tag (replace old one)
git tag -f current_pdfs

# Push commits & tags
git push && git push --tags
