# get a list of current connected USB devices
$currentDevices = Get-PnpDevice -class 'USB' -Status 'OK' | Foreach-Object { $_.InstanceId }

# register event that triggers when a USB device is plugged in
Register-WmiEvent -Class win32_DeviceChangeEvent -SourceIdentifier deviceChange23;
$newDeviceEvent = Wait-Event -SourceIdentifier deviceChange23;

# get a list of current connected USB devices (with the new device included)
$currentAndNewDevice = Get-PnpDevice -class 'USB' -Status 'OK' | Foreach-Object { $_.InstanceId }

# get instance id of device that has been plugged in
$newDeviceInstanceId = Compare-Object -ReferenceObject $currentDevices -DifferenceObject $currentAndNewDevice -PassThru

$ScriptPath = Split-Path $MyInvocation.InvocationName

#calling the MainForm GUI
& "$ScriptPath\program.ps1" $newDeviceInstanceId