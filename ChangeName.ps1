# Overall-Comment:
# Hier hat man ein GUI, in welchem Man ein PopUp hat, welches erscheint, sobald man den Namen ändern will.
# Auch diese Powershell kann nur mit einer InstanceId gestartet werden.

#-----------------------------------------------

[CmdletBinding()]
param([Parameter(Mandatory=$true)][String]$InstanceId)

#Generated Form Function
function GenerateForm {
#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$changeNameForm = New-Object System.Windows.Forms.Form

$btnOk = New-Object System.Windows.Forms.Button

$txtName = New-Object System.Windows.Forms.TextBox

$lblChangeName = New-Object System.Windows.Forms.Label

$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.

$btnOk_OnClick = {
    # Falls OK geklickt wird, wird mit Rename-Drive-Methode der Name geändert.
    Rename-Drive $txtName.Text

    # Hier wird die SetAttributes-Methode vom Main.ps1 aufgerufen, damit auch der Name aktualisiert werden
    . C:\Users\Gamer\Desktop\USB\Main.ps1 $InstanceId
    SetAttributes
    
    # Die Ansicht wird geschlossen, somit ist man wieder auf der Hauptseite.
    $changeNameForm.Close();
}

function Rename-Drive([string]$name) 
{
    # Hier holt man sich das USB-Device
    $drive = Get-WmiObject "Win32_LogicalDisk WHERE DeviceID='D:'"
    
    # Falls das Gerät gefunden wurde, wird der Name geändert. 
    if (-not $drive) { return }
    $drive.VolumeName = $name
    $drive.Put()
}

$OnLoadForm_StateCorrection=
{
    #Correct the initial state of the form to prevent the .Net maximized form issue
	$changeNameForm.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code

$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 63
$System_Drawing_Size.Width = 262
$changeNameForm.ClientSize = $System_Drawing_Size
$changeNameForm.DataBindings.DefaultDataSourceUpdateMode = 0
$changeNameForm.Name = "changeNameForm"
$changeNameForm.Text = "USB Device Notifier"
$changeNameForm.add_Load($handler_form1_Load)

$txtName.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 26
$txtName.Location = $System_Drawing_Point
$txtName.Name = "txtName"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 20
$System_Drawing_Size.Width = 156
$txtName.Size = $System_Drawing_Size
$txtName.TabIndex = 3

$changeNameForm.Controls.Add($txtName)

$lblChangeName.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 13
$System_Drawing_Point.Y = 8
$lblChangeName.Location = $System_Drawing_Point
$lblChangeName.Name = "lblChangeName"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 156
$lblChangeName.Size = $System_Drawing_Size
$lblChangeName.TabIndex = 2
$lblChangeName.Text = "Gerätename ändern"

$changeNameForm.Controls.Add($lblChangeName)


$btnOk.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 175
$System_Drawing_Point.Y = 25
$btnOk.Location = $System_Drawing_Point
$btnOk.Name = "btnOk"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnOk.Size = $System_Drawing_Size
$btnOk.TabIndex = 0
$btnOk.Text = "Ok"
$btnOk.UseVisualStyleBackColor = $True
$btnOk.add_Click($btnOk_OnClick)

$changeNameForm.Controls.Add($btnOk)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $changeNameForm.WindowState
#Init the OnLoad event to correct the initial state of the form
$changeNameForm.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$changeNameForm.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm

