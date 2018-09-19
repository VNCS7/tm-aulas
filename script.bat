@echo digite o nome do seu projeto

@echo off
set /p PROJETO=
@echo on
@echo.
@echo criando projeto, nome: %PROJETO%
@echo.

@set CRIAR= cordova create %PROJETO%
@call %CRIAR%

@call cd %PROJETO%

@call cordova platform add browser

@call cordova platform add android

@call cls

@echo projeto criado e plataformas adcionadas
@echo.

@call cd ..

@echo off

@call copy emulator.js %PROJETO%\platforms\android\cordova\lib

@echo emulator substituido 

@echo off
@cd %PROJETO%

@call cmd

@pause 
