# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - # 
# WindowsとLinuxを対象にしたクロスプラットフォームのビルドの定義  # 
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - # 

# プロジェクト名と使用する言語を設定
cmake_minimum_required(VERSION 3.10)
project(MyProjectName VERSION 1.0 LANGUAGES CXX)

# C++の標準バージョンを設定
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# - - - - - - - - - - - - - - - - - - - -
# デバッグ・リリースビルド設定
# - - - - - - - - - - - - - - - - - - - -

# -g:  デバッグ情報を生成
# -O0: 最適化しない
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0 -DDEBUG")
# -O3: 最適化
# -DNDEBUG: assert()マクロを無効
# -march=native: コンパイル時に利用可能な最適なCPU命令セットを使用
# -flto: リンクタイム最適化を有効
# -s: デバッグ情報を削除
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -DNDEBUG -march=native -flto -s")

# ヘッダーファイルパスを追加
include_directories(include)

# ソースファイルを指定
set(SOURCES
    src/main.cpp
)

# 実行ファイルの出力ディレクトリを指定
if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/debug)
elseif(CMAKE_BUILD_TYPE STREQUAL "Release")
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/bin/release)
endif()

# 実行ファイルを生成
add_executable(MyExecutableName ${SOURCES})
