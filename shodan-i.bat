@ECHO OFF

ECHO SHODAN [IS-21/22-DE LUCIA] Installer @ /is-shodan-21-22/commons/

ECHO.

ECHO L'installer tentera' di avviare automaticamente il server.

ECHO.

ECHO Prima di proseguire, avviare Visual Studio Code, premere Ctrl+Shift+P ...

ECHO ... digitare "Tasks: Manage Automatic Tasks in Folder" e attivare "Allow Automatic Tasks in Folder".

ECHO.

ECHO In alternativa, e' possibile evitare del tutto questo passaggio e proseguire senza avvio automatico.

ECHO.

PAUSE

ECHO.

ECHO Inserire la password dell'utente 'root' di MySQL.

set /p SHODAN_DB_PASSWORD="shodan_db_connection_password: "

ECHO.

ECHO Download [SHODAN-MAVEN]

git clone https://github.com/is-shodan-21-22/shodan-maven.git

ECHO.

ECHO Download [COMMONS-SQL]

git clone https://github.com/is-shodan-21-22/commons.git

ECHO.

ECHO Download [DELIVERABLES-PDF]

git clone https://github.com/is-shodan-21-22/deliverables.git

ECHO.

ECHO Download [DELIVERABLES-DOCS]

git clone https://github.com/is-shodan-21-22/docs.git

ECHO.

ECHO Download [SHODAN-EXTRA-INFOPOINT]

git clone https://github.com/is-shodan-21-22/shodan-infopoint.git

ECHO.

ECHO Reaching MySQL Workbench as root@localhost...

set path=%PATH%;C:\Program Files\MySQL\MySQL Server 8.0\bin;

ECHO.

ECHO Trying to run SQL from /commons/sql/creazione.sql/

mysql --user="root" --password=%SHODAN_DB_PASSWORD% shodan < commons/sql/Creazione.sql 2> commons/err.txt

ECHO.

ECHO Trying to run SQL from /commons/sql/popolamento.sql/

mysql --user="root" --password=%SHODAN_DB_PASSWORD% shodan < commons/sql/Popolamento.sql 2> commons/err.txt

cd commons

del /f err.txt

cd ..

ECHO.

ECHO Installing Maven dependencies from /shodan-maven/pom.xml/...

ECHO.

cd shodan-maven
CALL mvn clean install
cd ..

ECHO.

ECHO Opening Visual Studio Code...

CALL code commons/shodan-workspace.code-workspace -g shodan-maven/README.md

ECHO.

ECHO Running SHODAN_MAVEN @ localhost:8080/shodan_maven/ on Chrome
ECHO Se l'avvio automatico non e' stato attivato, verra' restituito un 404.

CALL start "chrome" http://localhost:8080/shodan_maven

ECHO.

ECHO Download [{vhs.mp4} ~ 105mb]
ECHO Non chiudere la shell durante il download.
ECHO Se non si è su Linux, si potrebbero ottenere errori (irrilevanti) relativi a comandi inesistenti.

ECHO.

curl.exe -o shodan-maven/src/main/webapp/Static/Assets/VHS.mp4 https://lppeba.sn.files.1drv.com/y4muNu-ZDTyK7SgY3DK5whAI_NcQYBFO8UdhtMsUKtdMi1tFXTBpuIPBGzMa9a4LiGiak3kSkN_7Lrd3yHm29t3N79vNCMaevxs7y0iErzQEm_nRZGl9Q4DZpqx6bPkkqGrYNTkxK9SJ3XySSiu0dDM2ku-gTPlGKVLLX4GN7IW1uwh-cA6ZWpGcVFlsYgMRcUf/VHS.mp4?download&psid=1

ECHO.

ECHO Installazione conclusa. E' possibile chiudere la finestra. 

ECHO.

PAUSE