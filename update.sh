#!/bin/bash

# Push to github
git add .
git commit -m "update: $(date +'%Y-%m-%d %H:%M:%S')"
git push origin main