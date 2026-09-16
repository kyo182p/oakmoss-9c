@echo off
rem Push this folder to GitHub. Run once after creating the repo on github.com.
rem Usage: publish.bat https://github.com/<you>/<repo>.git
if "%~1"=="" (
  echo Usage: publish.bat https://github.com/USER/REPO.git
  exit /b 1
)
git init
git branch -M main
git add index.html README.md .nojekyll publish.bat
git commit -m "Yunlin scheduling tool"
git remote remove origin 2>nul
git remote add origin %~1
git push -u origin main
echo.
echo Done. Now on github.com: Settings ^> Pages ^> Source: Deploy from a branch ^> main / (root) ^> Save
