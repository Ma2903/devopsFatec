@echo off
set "origem=C:\Users\aluno\Desktop/devopsFatec"
set "destino=C:\Users\aluno\Desktop/Backup-Fatec"

:: Cria uma pasta com a data e hora atual
set data=%date:~6,4%%date:~3,2%%date:~0,2%
set hora=%time:~0,2%%time:~3,2%%time:~6,2%
set nome_backup=%data%_%hora%

mkdir "%destino%\%nome_backup%"
xcopy "%origem%\*" "%destino%\%nome_backup%\" /E /I /Y

echo Backup realizado com sucesso para "%destino%\%nome_backup%"!
pause
