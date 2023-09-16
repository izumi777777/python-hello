#!/bin/bash

# ファイルをコピー
cp app.py tests/
# 8秒待機
sleep 8

cp -r templates tests/
# 8秒待機
sleep 8

echo "Sucess Full!!"

# # テストを実行
python -m pytest tests/

# 5秒待機
sleep 5

# # テストが終了したら不要なファイルを削除
rm tests/app.py
rm -r tests/templates
