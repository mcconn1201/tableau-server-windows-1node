Param(
    [string]$windows_un,
    [string]$windows_pw,
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
    [string]$reg_country,
    [string]$license_key,
    [boolean]$trial
)

## download config-script
mkdir "C:/tabsetup/"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/maddyloo/tableau-server-windows-1node/master/config_script.ps1" -OutFile "C:/tabsetup/config-script.ps1"

## enable permissions
$password = ConvertTo-SecureString $windows_pw -AsPlainText -Force
$path = $env:COMPUTERNAME + "\" + $windows_un
$path
$credential = New-Object System.Management.Automation.PSCredential($path, $password)
Enable-PSRemoting -Force

## call config script
Start-Process -FilePath "c:/tabsetup/config-script.ps1" -verb runAs -ArgumentList $ts_admin_un, $ts_admin_pw, $reg_first_name, $reg_last_name, $reg_email, $reg_company, $reg_title, $reg_department, $reg_industry, $reg_phone, $reg_city, $reg_state, $reg_zip, $reg_country, $license_key, $trial

Disable-PSRemoting -Force