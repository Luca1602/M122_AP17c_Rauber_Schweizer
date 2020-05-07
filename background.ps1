
function Get-RandomString{
    return -join ((48..57) + (97..122) | Get-Random -Count 32 | % {[char]$_})
}


$i = 0
while($true){
    if($i % 2 -eq 0){

        # get a list of current connected USB devices
        $currentDevices = Get-PnpDevice -class 'USB' -Status 'OK' | Foreach-Object { $_.InstanceId }

        $identifier =  Get-RandomString + $i.toString()

        # register event that triggers when a USB device is plugged in
        Register-WmiEvent -Class win32_DeviceChangeEvent -SourceIdentifier $identifier 
        
        $newDeviceEvent = Wait-Event -SourceIdentifier $identifier;
        
        # get a list of current connected USB devices (with the new device included)
        $currentAndNewDevice = Get-PnpDevice -class 'USB' -Status 'OK' | Foreach-Object { $_.InstanceId }

        # get instance id of device that has been plugged in
        $newDeviceInstanceId = Compare-Object -ReferenceObject $currentDevices -DifferenceObject $currentAndNewDevice -PassThru

        $ScriptPath = Split-Path $MyInvocation.InvocationName

        #calling the MainForm GUI
        & "$ScriptPath\program.ps1" $newDeviceInstanceId
    }else{
        $identifier2 = Get-RandomString + $i.toString()

        # register event that triggers when a USB device is plugged in
        Register-WmiEvent -Class win32_DeviceChangeEvent -SourceIdentifier $identifier2 
        $newDeviceEvent2 = Wait-Event -SourceIdentifier $identifier2;
    }
    $i = $i + 1
}

