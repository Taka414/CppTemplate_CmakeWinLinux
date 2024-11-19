@echo off

:: 
:: WindowsでCMakeを使用する際にソリューションを生成するためのバッチファイル
:: 

cd /d %~dp0

:: VS2022のソリューションを生成する
cmake -S . -B build/vsSolution -G "Visual Studio 17 2022"

:: 生成したソリューションが存在するフォルダを開く
start "" "build\vsSolution"