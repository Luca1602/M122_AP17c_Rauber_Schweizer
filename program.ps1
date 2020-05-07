[CmdletBinding()]
# get instance id of new device from background.ps1
param([Parameter(Mandatory=$true)][String]$newDeviceInstanceId)

function GenerateForm {

    #region Import Assemblies
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    #endregion

    #region Form Objects
    $form1 = New-Object System.Windows.Forms.Form
    $tab_Allgemein = New-Object System.Windows.Forms.TabControl
    $tabPage3 = New-Object System.Windows.Forms.TabPage
    $btn_OkAllgemein = New-Object System.Windows.Forms.Button
    $lbl_state = New-Object System.Windows.Forms.Label
    $lbl_manufactor = New-Object System.Windows.Forms.Label
    $lbl_deviceType = New-Object System.Windows.Forms.Label
    $title_state = New-Object System.Windows.Forms.Label
    $title_manufactor = New-Object System.Windows.Forms.Label
    $title_devicetype = New-Object System.Windows.Forms.Label
    $lbl_deviceName = New-Object System.Windows.Forms.Label
    $btn_changeName = New-Object System.Windows.Forms.Button
    $tab_Ereignisse = New-Object System.Windows.Forms.TabPage
    $btn_OkEreignisse = New-Object System.Windows.Forms.Button
    $lb_Ereignisse = New-Object System.Windows.Forms.ListBox
    $title_Ereignisse = New-Object System.Windows.Forms.Label
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
    #endregion

    #region Events
    $btn_OkAllgemein_OnClick= 
    {
        $form1.Close()
    }

    $btn_OkEreignisse_OnClick= 
    {
        $form1.Close()
    }

    $btn_changeName_OnClick= 
    {
    

    }

    $OnLoadForm_StateCorrection=
    {
	    $form1.WindowState = $InitialFormWindowState
    }

    #endregion

    #region Form Code
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 379
    $System_Drawing_Size.Width = 433
    $form1.ClientSize = $System_Drawing_Size
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $form1.Name = "form1"
    $form1.Text = "Primal Form"

    $tab_Allgemein.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 12
    $System_Drawing_Point.Y = 12
    $tab_Allgemein.Location = $System_Drawing_Point
    $tab_Allgemein.Name = "tab_Allgemein"
    $tab_Allgemein.SelectedIndex = 0
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 355
    $System_Drawing_Size.Width = 409
    $tab_Allgemein.Size = $System_Drawing_Size
    $tab_Allgemein.TabIndex = 0

    $form1.Controls.Add($tab_Allgemein)
    $tabPage3.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 4
    $System_Drawing_Point.Y = 22
    $tabPage3.Location = $System_Drawing_Point
    $tabPage3.Name = "tabPage3"
    $System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
    $System_Windows_Forms_Padding.All = 3
    $System_Windows_Forms_Padding.Bottom = 3
    $System_Windows_Forms_Padding.Left = 3
    $System_Windows_Forms_Padding.Right = 3
    $System_Windows_Forms_Padding.Top = 3
    $tabPage3.Padding = $System_Windows_Forms_Padding
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 329
    $System_Drawing_Size.Width = 401
    $tabPage3.Size = $System_Drawing_Size
    $tabPage3.TabIndex = 1
    $tabPage3.Text = "Allgemein"
    $tabPage3.UseVisualStyleBackColor = $True

    $tab_Allgemein.Controls.Add($tabPage3)

    $btn_OkAllgemein.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 278
    $System_Drawing_Point.Y = 289
    $btn_OkAllgemein.Location = $System_Drawing_Point
    $btn_OkAllgemein.Name = "btn_OkAllgemein"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 75
    $btn_OkAllgemein.Size = $System_Drawing_Size
    $btn_OkAllgemein.TabIndex = 9
    $btn_OkAllgemein.Text = "OK"
    $btn_OkAllgemein.UseVisualStyleBackColor = $True
    $btn_OkAllgemein.add_Click($btn_OkAllgemein_OnClick)

    $tabPage3.Controls.Add($btn_OkAllgemein)

    $lbl_state.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 154
    $System_Drawing_Point.Y = 247
    $lbl_state.Location = $System_Drawing_Point
    $lbl_state.Name = "lbl_state"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $lbl_state.Size = $System_Drawing_Size
    $lbl_state.TabIndex = 8
    $lbl_state.Text = "label8"

    $tabPage3.Controls.Add($lbl_state)

    $lbl_manufactor.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 154
    $System_Drawing_Point.Y = 183
    $lbl_manufactor.Location = $System_Drawing_Point
    $lbl_manufactor.Name = "lbl_manufactor"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $lbl_manufactor.Size = $System_Drawing_Size
    $lbl_manufactor.TabIndex = 7
    $lbl_manufactor.Text = "label7"

    $tabPage3.Controls.Add($lbl_manufactor)

    $lbl_deviceType.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 154
    $System_Drawing_Point.Y = 120
    $lbl_deviceType.Location = $System_Drawing_Point
    $lbl_deviceType.Name = "lbl_deviceType"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $lbl_deviceType.Size = $System_Drawing_Size
    $lbl_deviceType.TabIndex = 6
    $lbl_deviceType.Text = "label6"

    $tabPage3.Controls.Add($lbl_deviceType)

    $title_state.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 30
    $System_Drawing_Point.Y = 247
    $title_state.Location = $System_Drawing_Point
    $title_state.Name = "title_state"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $title_state.Size = $System_Drawing_Size
    $title_state.TabIndex = 5
    $title_state.Text = "Status:"

    $tabPage3.Controls.Add($title_state)

    $title_manufactor.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 30
    $System_Drawing_Point.Y = 183
    $title_manufactor.Location = $System_Drawing_Point
    $title_manufactor.Name = "title_manufactor"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $title_manufactor.Size = $System_Drawing_Size
    $title_manufactor.TabIndex = 4
    $title_manufactor.Text = "Hersteller:"

    $tabPage3.Controls.Add($title_manufactor)

    $title_devicetype.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 30
    $System_Drawing_Point.Y = 120
    $title_devicetype.Location = $System_Drawing_Point
    $title_devicetype.Name = "title_devicetype"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $title_devicetype.Size = $System_Drawing_Size
    $title_devicetype.TabIndex = 3
    $title_devicetype.Text = "Gerätetyp:"

    $tabPage3.Controls.Add($title_devicetype)

    $lbl_deviceName.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 30
    $System_Drawing_Point.Y = 56
    $lbl_deviceName.Location = $System_Drawing_Point
    $lbl_deviceName.Name = "lbl_deviceName"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $lbl_deviceName.Size = $System_Drawing_Size
    $lbl_deviceName.TabIndex = 2

    $tabPage3.Controls.Add($lbl_deviceName)



    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 30
    $System_Drawing_Point.Y = 29
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 50
    $System_Drawing_Size.Width = 100


    $btn_changeName.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 278
    $System_Drawing_Point.Y = 56
    $btn_changeName.Location = $System_Drawing_Point
    $btn_changeName.Name = "btn_changeName"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 75
    $btn_changeName.Size = $System_Drawing_Size
    $btn_changeName.TabIndex = 0
    $btn_changeName.Text = "Ändern"
    $btn_changeName.UseVisualStyleBackColor = $True
    $btn_changeName.add_Click($btn_changeName_OnClick)

    $tabPage3.Controls.Add($btn_changeName)


    $tab_Ereignisse.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 4
    $System_Drawing_Point.Y = 22
    $tab_Ereignisse.Location = $System_Drawing_Point
    $tab_Ereignisse.Name = "tab_Ereignisse"
    $System_Windows_Forms_Padding = New-Object System.Windows.Forms.Padding
    $System_Windows_Forms_Padding.All = 3
    $System_Windows_Forms_Padding.Bottom = 3
    $System_Windows_Forms_Padding.Left = 3
    $System_Windows_Forms_Padding.Right = 3
    $System_Windows_Forms_Padding.Top = 3
    $tab_Ereignisse.Padding = $System_Windows_Forms_Padding
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 329
    $System_Drawing_Size.Width = 401
    $tab_Ereignisse.Size = $System_Drawing_Size
    $tab_Ereignisse.TabIndex = 2
    $tab_Ereignisse.Text = "Ereignisse"
    $tab_Ereignisse.UseVisualStyleBackColor = $True

    $tab_Allgemein.Controls.Add($tab_Ereignisse)

    $btn_OkEreignisse.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 300
    $System_Drawing_Point.Y = 283
    $btn_OkEreignisse.Location = $System_Drawing_Point
    $btn_OkEreignisse.Name = "btn_OkEreignisse"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 75
    $btn_OkEreignisse.Size = $System_Drawing_Size
    $btn_OkEreignisse.TabIndex = 2
    $btn_OkEreignisse.Text = "OK"
    $btn_OkEreignisse.UseVisualStyleBackColor = $True
    $btn_OkEreignisse.add_Click($btn_OkEreignisse_OnClick)

    $tab_Ereignisse.Controls.Add($btn_OkEreignisse)

    $lb_Ereignisse.DataBindings.DefaultDataSourceUpdateMode = 0
    $lb_Ereignisse.FormattingEnabled = $True
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 22
    $System_Drawing_Point.Y = 72
    $lb_Ereignisse.Location = $System_Drawing_Point
    $lb_Ereignisse.Name = "lb_Ereignisse"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 186
    $System_Drawing_Size.Width = 353
    $lb_Ereignisse.Size = $System_Drawing_Size
    $lb_Ereignisse.TabIndex = 1

    $tab_Ereignisse.Controls.Add($lb_Ereignisse)

    $title_Ereignisse.DataBindings.DefaultDataSourceUpdateMode = 0

    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 22
    $System_Drawing_Point.Y = 23
    $title_Ereignisse.Location = $System_Drawing_Point
    $title_Ereignisse.Name = "title_Ereignisse"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Height = 23
    $System_Drawing_Size.Width = 100
    $title_Ereignisse.Size = $System_Drawing_Size
    $title_Ereignisse.TabIndex = 0
    $title_Ereignisse.Text = "Ereignisse"

    $tab_Ereignisse.Controls.Add($title_Ereignisse)
    #endregion

    
    $lbl_deviceType.Text = Get-PnpDeviceProperty -InstanceId $newDeviceInstanceId -KeyName 'DEVPKEY_Device_BusReportedDeviceDesc' | foreach{$_.Data}
    $lbl_state.Text = Get-PnpDeviceProperty -InstanceId $newDeviceInstanceId -KeyName 'DEVPKEY_Device_IsPresent' | foreach{$_.Data}
    $lbl_manufactor.Text = Get-PnpDeviceProperty -InstanceId $newDeviceInstanceId -KeyName 'DEVPKEY_Device_DriverProvider'| foreach{$_.Data}
    $lbl_deviceName.Text = Get-WmiObject -Class Win32_logicaldisk -Filter "DeviceID='E:'" | Foreach-Object { $_.VolumeName }

    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #$lbl_deviceName.Text = "USB_LUCA"
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog()| Out-Null
}

# generate form
GenerateForm