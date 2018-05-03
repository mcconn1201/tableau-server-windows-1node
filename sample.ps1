Param(
    [string]$ts_admin_un,
    [string]$ts_admin_pw,
    [string]$reg_first_name,
    [string]$reg_last_name,
    [string]$reg_email,
    [string]$reg_company,
    [string]$reg_title,
    [string]$reg_department,
    [string]$reg_industry,
    [string]$reg_phone,
    [string]$reg_city,
    [string]$reg_state,
    [string]$reg_zip,
    [string]$reg_country
)

## FILES
## 1. make secrets.json file

cd C:/
mkdir tabsetup

$secrets = @{
    content_admin_user = "$ts_admin_un"
    content_admin_password = "$ts_admin_pw"
}

$secrets | ConvertTo-Json -depth 10 | Out-File "C:/tabsetup/secrets.json"

## 2. make registration.json

$registration = @{
    first_name = "$reg_first_name"
    last_name = "$reg_last_name"
    email = "$reg_email"
    company = "$reg_company"
    title = "$reg_title"
    department = "$reg_department"
    industry = "$reg_industry"
    phone = "$reg_phone"
    city = "$reg_city"
    state = "$reg_state"
    zip = "$reg_zip"
    country = "$reg_country"
}

$registration | ConvertTo-Json -depth 10 | Out-File "C:/tabsetup/registration.json"

## 3. download python installer

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/maddyloo/tableau-server-windows-1node/master/ScriptedInstaller.py" -OutFile "C:/tabsetup/ScriptedInstaller.py"

## 4. Download python .msi
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri "https://www.python.org/ftp/python/2.7.12/python-2.7.12.msi" -OutFile "C:/tabsetup/python-2.7.12.msi"

## 5. download Tableau Server .exe

Invoke-WebRequest -Uri "https://downloads.tableau.com/esdalt/2018.1.0/TableauServer-64bit-2018-1-0.exe" -Outfile "C:/tabsetup/tableau-server-installer.exe"

## COMMANDS
## 1. install python
c:\\tabsetup\\python-2.7.12.msi /quiet /qn

## 2. install yaml
c:\\Python27\\Scripts\\pip.exe install pyyaml

## 3. run installer script
C:\Python27\python.exe
ScriptedInstaller.py install --installerLog C:/tabsetup/tabinstall.txt --enablePublicFwRule --secretsFile C:/tabsetup/secrets.json --registrationFile C:/tabsetup/registration.json --installDir C:/Tableau/ --licensekey TSCE-1F6D-6BD0-EB17-FC98
C:/tabsetup/tableau-server-installer.exe

##  c:\\tabsetup\\installer-output.txt 2>&1

## 4. cleanup secrets

del c:\\tabsetup\\secrets.json