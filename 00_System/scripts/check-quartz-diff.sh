#!/bin/bash

cd quartz
git fetch origin
CHANGED_FILES=$(git diff --name-only HEAD origin/main -- quartz/ components/ plugins/)

for file in $CHANGED_FILES; do
    echo "⚠️ 변경됨: $file"
    # 이 파일이 내가 커스텀한 영역과 겹치는지 확인
done
