@echo off

:: 
:: Windows��CMake���g�p����ۂɃ\�����[�V�����𐶐����邽�߂̃o�b�`�t�@�C��
:: 

cd /d %~dp0

:: VS2022�̃\�����[�V�����𐶐�����
cmake -S . -B build/vsSolution -G "Visual Studio 17 2022"

:: ���������\�����[�V���������݂���t�H���_���J��
start "" "build\vsSolution"