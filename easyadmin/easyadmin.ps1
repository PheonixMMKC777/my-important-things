$version = "v0.1"


function Main {
    $iconBase64      = 'iVBORw0KGgoAAAANSUhEUgAAACAAAAAgBAMAAACBVGfHAAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAAGFBMVEUAAAAAAADDw8N/f3+WlpZeZtU/SMz///++d5DdAAAAAXRSTlMAQObYZgAAAAFiS0dEBxZhiOsAAAAHdElNRQfmBA4SBRP//UFJAAAAAW9yTlQBz6J3mgAAAGlJREFUKM+l0UERQCEIBFAqbAUrUGErWMH+EVQ8qDD4D5/bvmFEVGQVRslZHlBG4QEzq36Awh0RAGt4CjRAIXKY8gC7GWx4Aqic2xVmgNoIUnU33DBygz3ibrhg5XN3B/8bBC5HEPfrATpegiIjDScxnAAAACV0RVh0ZGF0ZTpjcmVhdGUAMjAyMi0wNC0xNFQxODowNToxNiswMDowMBZs6a8AAAAldEVYdGRhdGU6bW9kaWZ5ADIwMjItMDQtMTRUMTg6MDU6MTYrMDA6MDBnMVETAAAAAElFTkSuQmCC'
    $iconBytes       = [Convert]::FromBase64String($iconBase64)
    $stream          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
    $stream.Write($iconBytes, 0, $iconBytes.Length)


$MainWindow = New-Object System.Windows.Forms.Form
$MainWindow.Text = "EasyAdmin $Version"
$MainWindow.Size = "500,400"
$MainWindow.Icon = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

    #Tab control
    $TabControl = new-Object System.Windows.Forms.TabControl
    $TabControl.Size = "440,250"
    $TabControl.Location = "20,60"

    #UserTabs and elems of it
    $TabUsers = New-Object System.Windows.Forms.TabPage
    $TabUsers.Text = "Users"

    $AccountLockoutB = New-object system.windows.forms.button
    $AccountLockoutB.Text = "Lockout Accounts*"
    $AccountLockoutB.Size = "100,40"
    $AccountLockoutB.Location = "20,20"
    $AccountLockoutB.Add_Click({GetUserListGUI})



#Window Elements
$MainWindow.Controls.Add($TabControl)

#Tab elements
$TabControl.Controls.Add($TabUsers)
$TabUsers.Controls.Add($AccountLockoutB)

#draw
$MainWindow.ShowDialog()
}


Function GetUserListGUI {
$users = Get-localUser
$UserCount = 0
ForEach ($user in $users) {

Write-Host "$user.Username"

}


$ListGUI = New-object System.Windows.Forms.Form
$ListGUI.Size = "350,450"
$ListGUI.Text = "UserList"
$ListGUI.Icon = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

$HeadsUp = New-Object System.Windows.Forms.Label
$HeadsUp.Text = "Select users to lockout"
$HeadsUp.Size = "200,45"
$HeadsUp.Location = "100,25"
$headsup.font = "Arial,9"

#elems
$Listgui.Controls.Add($HeadsUp)

#Draw
$ListGUI.ShowDialog()

}

Main