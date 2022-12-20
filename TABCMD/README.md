# TABCMD 

<br>"Tableau provides the tabcmd command-line utility which you can use to automate site administration tasks on your Tableau Server site. For example, creating or deleting users, projects, and groups."</br>

Link to TABCMD Website: https://help.tableau.com/current/server/en-us/tabcmd.htm


<br>This folder contains files utilized to automate the generation and sending of PDF reporting.</br>

<br>Files Included:
1. <b>Guide for Pthon_start Script.ipynb</b>
2. <b>Guide for Python_clean&email Script.ipynb</b>
3. <b>Combine.bat</b> - Connects to TABCMD, iterates through accounts, and saves PDFs
4. <b>Run.bat</b> - Runs all scripts (final scripts not included here, just jupyter notebooks</br>

# TABCMD Commands
<br> Please visit the link below for a comprehensive list of TABCMD commands</br>
Link:
https://help.tableau.com/current/server/en-us/tabcmd_cmd.htm

<br>For the example included in this folder, we will be using the TABCMD export command</br>
Link to command documentation: https://help.tableau.com/current/server/en-us/tabcmd_cmd.htm#id7cb8d032-a4ff-43da-9990-15bdfe64bcd0

<br>Steps for Using TABCMD Command Export for PDFs:</br>

1. Launch TABCMD from the command line and type tabcmd
2. Type tabcmd login -s https://tableau.servername.com (add -u if you want to specify your username and -p if you want to add in your pass, if not tabcmd will prompt you for your pass) 
4. Type tabcmd export followed by the workbook/view of the report you are attempting to get. After providing the workbook and view, you can also specify which filter/parameter if any you want to limit to,  whether you want a pdf of the selected view or full PDF, the size and orientation of the PDF, and the name of the file. 

tabcmd export "Somedash/ParameterPage?<b>report_dt</b>=202205&<b>Thing%20Select</b>=Jan%20Start%20Plan%20Year&<b>Acct%20Name%20</b>=Some%20Item" --fullpdf --pagelayout landscape --pagesize unspecified -f "Dash.pdf"

<br>Breakdown:</br> 
*  <b>Workbook/View</b> = "Somedash/ParameterPage?
*  <b>Reporting Period filter from Parameter Page</b> = report_dt 
*  <b>Plan Year Thing parameter from Parameter Page</b> = Thing%20Select 
*  <b>Account Name parameter from Parameter Page</b> = Acct%20Name%20
*  <b>Export entire workbook as PDF</b> = --fullpdf
*  <b>Set page orientation</b> = --pagelayout 
*  <b>Set pagesize</b> = --pagesize 
*  <b>Filename</b> = -f 

<br>Handling Special Characters</br>
* Since we are requesting the exports via URL, all filters, parameters, and values must be encoded as follows: ' '=%20,'&'=%26,','=%5C%2C 
* When running from a batch script, an additional % sign must be used for special characters ex. %20 = %%20
* https://www.w3schools.com/tags/ref_urlencode.ASP 
