# CppTemaplateの説明

このテンプレートが想定する利用環境

- CMakeを利用
- Windows + VisualStudio2022
- Linux + GCC + VSCode
- C++17をターゲット



テンプレートの目的は、WindowsとLinuxの特定の環境下でゼロから何かを作成するときのベースとして使いまわせることを想定。Linux + VSCode環境下で雑多なことを考慮せずデバッグ実行できるように構成を予め定義しておく。



<u>**補足:**</u>

このテンプレートの制約、制限、注意事項は次の通り

- `MacOS` / `Android` 環境を対象としない

- `GCC` ではなく `Clang` を使用したいので将来的にコンパイラーは変更する可能性がある



## フォルダ構成について

```cpp
.vscode/
bin/		// ★ビルドした成果物が格納される
  debug/
  release/
build/		// ★CMakeの構成ごとの生成物が格納される
  debug/
  release/
  vsSolution/
include/	// ★アプリ外部に公開するヘッダーを格納する
  ${produc-name}
lib/		// ★外部ライブラリを格納する
src/		// ★ソースコード、外部に公開しないヘッダーを格納する
test/		// ★テスト用のコードを格納する
python/		// ★Pythonを使用する場合ファイル配置先
    venv/
    scripts/
```



pythonで仮想環境を利用する場合以下の通りセットアップを行うこと

```bash
python3 -m venv python/venv
# Linuxで環境をアクティブ化
source python/venv/bin/activate
# Windowsで環境をアクティブ化
.\python\venv\Scripts\activate
```

補足：venvはgitから除外しているため環境ごとに作成が必要



## ファイルについて

実行すればビルドできる（事前に`sudo chmod +x linux-build-*`で実行権限を付与しておく）

- linux-build-debug.sh

- linux-build-release.sh



VS2022用の構成を作成する

- Windows-gen-vs2022-solution.bat



プロジェクトの状況に応じて変こする

- .clang-format … 標準のコーディング規約
- CMakeLists.txt … CMake用の設定
- README.md … このファイル
- .vscode
  - c_cpp_properties.json … VSCode用のインテリセンスの構成
  - settings.json … VSCodeで扱わないファイルの指定など
  - launch.json / tasks.json ... デバッグ実行用の構成定義



.vscode内のファイルは現状の状態でVSCode上でF5を押したときにシームレスにデバッグ実行が始まるように定義してある。特にプロジェクトの実行形式ファイルを変更した時（や出力先を変更した場合）参照先が変わるので名前を合わせるように設定を変更する。





【EOL】
