# Overall-Comment:
# Dies ist das Poweshell welches im Hintergrund läuft und einen Event auslöst, sobald ein USB-Device eignesteckt wird.
# Damit man auch weiss welches Gerät eingesteckt wird, habe ich eine $listOld und eine $listNew.

#-----------------------------------------------

# In der $listOld sind alle aktiven Devices.
$listOld = Get-PnpDevice -class 'USB' -Status 'OK' | Foreach-Object { $_.InstanceId }

# Hier wird der Hintergrundevent registriert, welcher getriggert wird, sobald ein Device eingesteckt wird.
Register-WmiEvent -Class win32_DeviceChangeEvent -SourceIdentifier deviceChange108;
Wait-Event -SourceIdentifier deviceChange108;

# Eingeltich dito $listOld, nur hat man hier einen Eintrag mehr.
$listNew = Get-PnpDevice -class 'USB' -Status 'OK' | Foreach-Object { $_.InstanceId }

# Nun vergleicht man die beiden Listen ($listOld, $listNew) und bekommt die Differenz, also unsere gesuchte "InstanceId".
$newInstanceId = Compare-Object -ReferenceObject $listOld -DifferenceObject $listNew -PassThru

# Nun hat man die InstanceId und kann nun die Hauptseite "laden".
# Diese befindet sich im Main.ps1
$ScriptPath = Split-Path $MyInvocation.InvocationName
& "$ScriptPath\Main.ps1" $c