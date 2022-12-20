@echo off
::echo %eom_dt%
::echo %passw%
::echo %thing1%

cd %path_nm%

echo Logging into Tableau Server...
tabcmd login -s https://tableau.yourserver.com -u %user% -p %passw%
for %%i in (%thing1%) do echo %%~i

echo Generating PDFs...
for %%i in (%thing1%) do tabcmd export "Somedash/ParameterPage?report_dt=%eom_dt%&BOB%%20Select=%thing1%&Acct%%20Name%%20(copy%%202)=%%~i" --fullpdf --pagelayout landscape --pagesize unspecified -f "Dash-%%~i-%eom_dt%.pdf"


echo PDF Generation Complete.
