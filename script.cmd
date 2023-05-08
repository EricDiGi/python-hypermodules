@echo off

:: Create a new environment
@REM conda create -n sanitary_zone python=3.8
@REM conda activate sanitary_zone

echo "Installing packages"
:: Try the script
python XYZ_deploy_this/script.py
:: The script should fail because of missing packages
echo "Script should have failed"
pause
echo "Installing packages"
:: Install packages in the new environment
pip install -r requirements.txt
echo "Packages installed"
:: Run the script we want
python XYZ_deploy_this/script.py
:: The script should run correctly
echo "Script should have run correctly"
pause

echo "Packaging the deployment folder"
:: Pack the Deployment folder with all of the dependencies
cd XYZ_deploy_this
pip install -r requirements.txt -t .
:: The folder should now contain all of the dependencies
cd ../
echo "Folder packaged"
pause

:: The folder is ready to be zipped and deployed
:: Folder can be tested by moving it to another computer or changing the parent directory and running the script



