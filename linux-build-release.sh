#!/bin/bash

# プロジェクトのルートディレクトリを取得
PROJECT_ROOT=$(pwd)

# ビルドディレクトリの作成
BUILD_DIR="$PROJECT_ROOT/build/release"

# ビルドディレクトリが存在しない場合は作成
if [ ! -d "$BUILD_DIR" ]; then
  mkdir "$BUILD_DIR"
fi

# ビルドディレクトリに移動
cd "$BUILD_DIR"

# CMakeを使ってデバッグ用のビルドシステムを生成
cmake -DCMAKE_BUILD_TYPE=Release ../..

# ビルドを実行
make