cd /d "%~dp0"
echo You are currently in: %CURRENT_DIR%@echo off
:: Move into the script's directory
cd /d "%~dp0"

:: Upload new changes to GitHub
node tools/generateExamManifest.js
git add "Exams"
git add Script/examManifest.js
git commit -m "Uploading new Exams"
git push