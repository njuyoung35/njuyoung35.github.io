#!/bin/bash

cd "${GARDEN_HOME}/quartz"
git checkout main
git pull origin main
npx quartz update

# 심링크 복구 (덮어쓰기 방지)
rm -rf content quartz.config.yaml styles
ln -s ../content ./content
ln -s ../quartz-config/quartz.config.yaml ./quartz.config.default.yaml
ln -s ../quartz-config/styles ./quartz/styles

echo "✅ Quartz 업데이트 완료 + 심링크 재연결!"
