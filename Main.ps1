# Overall-Comment:
# Dies ist das "Hauptfenster", welches auftaucht, sobal ein Device erkannt wird.
# Wenn man dieses Powershell starten will, muss man eine InstanceId mitgeben. 
# Grund ist eigentlich ganz einfach, hat man kein Device kann diese View auch nicht angezeigt werden. 

#-----------------------------------------------

[CmdletBinding()]
param([Parameter(Mandatory=$true)][String]$InstanceId)

#Generated Form Function
function GenerateForm {
#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
#endregion

#region Generated Form Objects
$mainForm = New-Object System.Windows.Forms.Form

$tabAllgemein = New-Object System.Windows.Forms.TabControl
$pageAllgemein = New-Object System.Windows.Forms.TabPage
$pageEreignisse = New-Object System.Windows.Forms.TabPage

$btnOk = New-Object System.Windows.Forms.Button
$btnChange = New-Object System.Windows.Forms.Button

$lblTitle = New-Object System.Windows.Forms.Label
$lblName = New-Object System.Windows.Forms.Label
$lblStateSecond = New-Object System.Windows.Forms.Label
$lblHerstellerSecond = New-Object System.Windows.Forms.Label
$lblTypSecond = New-Object System.Windows.Forms.Label

$lblHersteller = New-Object System.Windows.Forms.Label
$lblTyp = New-Object System.Windows.Forms.Label
$lblState = New-Object System.Windows.Forms.Label

$picture = New-Object System.Windows.Forms.PictureBox

$listeEreignisse = New-Object System.Windows.Forms.ListBox

$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.

$btnChange_OnClick= 
{
    # Falls btnChange geklickt wird, Methode ChangeName aufrufen
    ChangeName
}

$btnOk_OnClick=
{
    # Fenster wird geschlossen, sobald Button "OK" betätigt wird.
    $mainForm.Close();
}

function ChangeName()
{
    # Aufruf von ChangeName.ps1, hier wird einfach nur der Name geändert.
    C:\Users\Gamer\Desktop\USB\ChangeName.ps1 $InstanceId
}

$OnLoadForm_StateCorrection=
{
    #Correct the initial state of the form to prevent the .Net maximized form issue
	$mainForm.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 307
$System_Drawing_Size.Width = 338
$mainForm.ClientSize = $System_Drawing_Size
$mainForm.DataBindings.DefaultDataSourceUpdateMode = 0
$mainForm.Name = "form1"
$mainForm.Text = "USB Device Notifier"

$lblTitle.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 16
$System_Drawing_Point.Y = 8
$lblTitle.Location = $System_Drawing_Point
$lblTitle.Name = "lblTitle"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 400
$lblTitle.Size = $System_Drawing_Size
$lblTitle.TabIndex = 1

$mainForm.Controls.Add($lblTitle)

$tabAllgemein.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 12
$System_Drawing_Point.Y = 34
$tabAllgemein.Location = $System_Drawing_Point
$tabAllgemein.Name = "tabControl1"
$tabAllgemein.SelectedIndex = 0
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 245
$System_Drawing_Size.Width = 304
$tabAllgemein.Size = $System_Drawing_Size
$tabAllgemein.TabIndex = 0

$mainForm.Controls.Add($tabAllgemein)
$pageAllgemein.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$pageAllgemein.Location = $System_Drawing_Point
$pageAllgemein.Name = "pageAllgemein"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$pageAllgemein.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 219
$System_Drawing_Size.Width = 296
$pageAllgemein.Size = $System_Drawing_Size
$pageAllgemein.TabIndex = 1
$pageAllgemein.Text = "Allgemein"
$pageAllgemein.UseVisualStyleBackColor = $True

$tabAllgemein.Controls.Add($pageAllgemein)

$btnOk.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 204
$System_Drawing_Point.Y = 158
$btnOk.Location = $System_Drawing_Point
$btnOk.Name = "btnOk"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnOk.Size = $System_Drawing_Size
$btnOk.TabIndex = 9
$btnOk.Text = "Ok"
$btnOk.UseVisualStyleBackColor = $True
$btnOk.add_Click($btnOk_OnClick)

$pageAllgemein.Controls.Add($btnOk)


$btnChange.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 204
$System_Drawing_Point.Y = 20
$btnChange.Location = $System_Drawing_Point
$btnChange.Name = "btnChange"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnChange.Size = $System_Drawing_Size
$btnChange.TabIndex = 8
$btnChange.Text = "Ändern"
$btnChange.UseVisualStyleBackColor = $True
$btnChange.add_Click($btnChange_OnClick)

$pageAllgemein.Controls.Add($btnChange)

$lblStateSecond.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 114
$System_Drawing_Point.Y = 132
$lblStateSecond.Location = $System_Drawing_Point
$lblStateSecond.Name = "lblStateSecond"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblStateSecond.Size = $System_Drawing_Size
$lblStateSecond.TabIndex = 7

$pageAllgemein.Controls.Add($lblStateSecond)

$lblHerstellerSecond.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 114
$System_Drawing_Point.Y = 106
$lblHerstellerSecond.Location = $System_Drawing_Point
$lblHerstellerSecond.Name = "lblHerstellerSecond"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblHerstellerSecond.Size = $System_Drawing_Size
$lblHerstellerSecond.TabIndex = 6

$pageAllgemein.Controls.Add($lblHerstellerSecond)

$lblTypSecond.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 114
$System_Drawing_Point.Y = 79
$lblTypSecond.Location = $System_Drawing_Point
$lblTypSecond.Name = "lblTypSecond"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblTypSecond.Size = $System_Drawing_Size
$lblTypSecond.TabIndex = 5

$pageAllgemein.Controls.Add($lblTypSecond)

$lblHersteller.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 106
$lblHersteller.Location = $System_Drawing_Point
$lblHersteller.Name = "lblHersteller"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblHersteller.Size = $System_Drawing_Size
$lblHersteller.TabIndex = 4
$lblHersteller.Text = "Hersteller"

$pageAllgemein.Controls.Add($lblHersteller)

$lblTyp.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 79
$lblTyp.Location = $System_Drawing_Point
$lblTyp.Name = "lblTyp"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblTyp.Size = $System_Drawing_Size
$lblTyp.TabIndex = 3
$lblTyp.Text = "Typ"

$pageAllgemein.Controls.Add($lblTyp)

$lblState.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 132
$lblState.Location = $System_Drawing_Point
$lblState.Name = "lblState"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblState.Size = $System_Drawing_Size
$lblState.TabIndex = 2
$lblState.Text = "Status"

$pageAllgemein.Controls.Add($lblState)

$lblName.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 127
$System_Drawing_Point.Y = 25
$lblName.Location = $System_Drawing_Point
$lblName.Name = "lblName"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 100
$lblName.Size = $System_Drawing_Size
$lblName.TabIndex = 1

$pageAllgemein.Controls.Add($lblName)

$picture.BackColor = [System.Drawing.Color]::FromArgb(255,255,0,0)

$picture.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 7
$System_Drawing_Point.Y = 7
$picture.Location = $System_Drawing_Point
$picture.Name = "picture"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 50
$System_Drawing_Size.Width = 100
$picture.Size = $System_Drawing_Size
$picture.TabIndex = 0
$picture.ImageLocation = "C:\Users\Gamer\Desktop\USB\logo.png"
$picture.TabStop = $False

$pageAllgemein.Controls.Add($picture)

$pageEreignisse.DataBindings.DefaultDataSourceUpdateMode = 0
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 4
$System_Drawing_Point.Y = 22
$pageEreignisse.Location = $System_Drawing_Point
$pageEreignisse.Name = "tabPage1"
$System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
$System_Windows_Forms_Padding.All = 3
$System_Windows_Forms_Padding.Bottom = 3
$System_Windows_Forms_Padding.Left = 3
$System_Windows_Forms_Padding.Right = 3
$System_Windows_Forms_Padding.Top = 3
$pageEreignisse.Padding = $System_Windows_Forms_Padding
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 219
$System_Drawing_Size.Width = 296
$pageEreignisse.Size = $System_Drawing_Size
$pageEreignisse.TabIndex = 2
$pageEreignisse.Text = "Ereignisse"
$pageEreignisse.UseVisualStyleBackColor = $True

$tabAllgemein.Controls.Add($pageEreignisse)

$listeEreignisse.DataBindings.DefaultDataSourceUpdateMode = 0
$listeEreignisse.FormattingEnabled = $True
$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 6
$System_Drawing_Point.Y = 27
$listeEreignisse.Location = $System_Drawing_Point
$listeEreignisse.Name = "Liste"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 173
$System_Drawing_Size.Width = 270
$listeEreignisse.Size = $System_Drawing_Size
$listeEreignisse.TabIndex = 1

$pageEreignisse.Controls.Add($listeEreignisse)
#endregion Generated Form Code

# Aufruf von Methode, welche alle Attribute abfüllt
SetAttributes

#Save the initial state of the form
$InitialFormWindowState = $mainForm.WindowState
#Init the OnLoad event to correct the initial state of the form
$mainForm.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$mainForm.ShowDialog()| Out-Null

} 
#End Function

# Hier werden alle Attribute abgefüllt, welche in der View gebraucht werden.
# Ich gehe über Get-PnpDeviceProperty, mit der InstanceId, welche ich im vorhinein herausgelesen habe.
function SetAttributes
{
    $HerstellerText = Get-PnpDeviceProperty -InstanceId $InstanceId -KeyName 'DEVPKEY_Device_DriverProvider' | foreach{$_.Data}
    $TypText = Get-PnpDeviceProperty -InstanceId $InstanceId -KeyName 'DEVPKEY_Device_BusReportedDeviceDesc' | foreach{$_.Data}
    $StateText = Get-PnpDeviceProperty -InstanceId $InstanceId -KeyName 'DEVPKEY_Device_IsPresent'| foreach{$_.Data}
    $NameText = Get-WmiObject -Class Win32_logicaldisk -Filter "DeviceID='D:'" | Foreach-Object { $_.VolumeName }
    
    $lblTitle.Text = $NameText
    $lblName.Text = $NameText
    $lblHerstellerSecond.Text = $HerstellerText
    $lblTypSecond.Text = $TypText
    $lblStateSecond.Text = $StateText
}

#Call the Function
GenerateForm
