$PatternProductID = '(?(?=^[^\.]+$)\S*|(?<=\.)\S*)'
$xmlFile = "$env:TEMP\config.xml"
$Installs = @()
$Installs += Get-ItemProperty "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*" -ErrorAction SilentlyContinue | ? {$_.DisplayName -like "Office"} | ? {$_.PSChildName -match '^(?!{).*'} 
$Installs += Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\*" -ErrorAction SilentlyContinue | ? {$_.DisplayName -like "Office"} | ? {$_.PSChildName -match '^(?!{).*'} 

$Installs |? {$_} | % {
    $productID = $(if ($_.PSChildName -Match $PatternProductID) {$matches[0]} else {$_.PSChildName})
    If ($_.UninstallString -match "ClickToRun") {
        $UninstallString = "$($_.UninstallString) DisplayLevel=False"
    }
    Else {
        ([XML] "
        <Configuration Product=`"$ProductID`">
        <Display Level=`"none`" CompletionNotice=`"no`" SuppressModal=`"yes`" AcceptEula=`"yes`" />
        <Setting Id=`"SETUP_REBOOT`" Value=`"Never`" />
        </Configuration>
        ").Save($XmlFile)
        $UninstallString = "$($_.UninstallString) /config $xmlFile"
    }
    $FilePath = $UninstallString | % {$_.split('"')[1]}
    $Arguments = $UninstallString | % {$_.split('"')[2]}

    "{0,-15} {1}" -f "Program Name:", $($_.DisplayName) | Write-Output
    "{0,-15} {1}" -f "ProductID:", $(if ($_.PSChildName -Match $PatternProductID) {$matches[0]} else {$_.PSChildName}) | Write-Output
    "{0,-15} {1}" -f "Uninstall:", $UninstallString | Write-Output
    Write-Output ""
    Start-Process -FilePath $FilePath -ArgumentList $Arguments -Wait
    If (Test-Path $XmlFile) {Remove-Item $xmlFile}
}