$path = Get-Location

$FileExist = Test-Path -Path "$Path/ConradyAddressBook2022.csv"
If ($FileExist -eq $false) {New-Item -Name "ConradyAddressBook2022.csv" -Path $path 
                            Add-content -Path "$path\ConradyAddressBook2022.csv" -value "Name, Address, Cell, Zip"
                            }

Function Main {

$Mainwin = New-Object System.Windows.Forms.Form
$Mainwin.Text = "lake kaw sheet thing v1"
$Mainwin.Size = "700,500"

$info = New-Object System.Windows.Forms.Label
$info.Text = "Name:`n`nAddress:`n`nCellphone:`n`nZip:"
$info.Size = "80,120"
$info.Font = "Arial,10"
$info.Location = "20,50"

$Name = New-Object System.Windows.Forms.TextBox
$Name.Size = "200,10"
$Name.Location = "100,50"
$Name.Font = "Arial, 10"

$Address = New-Object System.Windows.Forms.TextBox
$Address.Size = "200,10"
$Address.Location = "100,80"
$Address.Font = "Arial, 10"

$Cell = New-Object System.Windows.Forms.TextBox
$Cell.Size = "200,10"
$Cell.Location = "100,110"
$Cell.Font = "Arial, 10"

$Zip = New-Object System.Windows.Forms.TextBox
$Zip.Size = "200,10"
$Zip.Location = "100,140"
$Zip.Font = "Arial, 10"



$Branch = New-Object System.Windows.Forms.ListBox
$Branch.Size = "80,170"
$Branch.Location = "320,50"
$Branch.Font = "Arial, 10"

$Branch.Items.Add('Bob')
$Branch.Items.Add('Pat')
$Branch.Items.Add('Janet')
$Branch.Items.Add('Don')
$Branch.Items.Add('Carol')
$Branch.Items.Add('Lynda')
$Branch.Items.Add('John')
$Branch.Items.Add('Gary')
$Branch.Items.Add('Phyllis')
$Branch.Items.Add('Mike')

$BranchL = New-Object System.Windows.Forms.Label
$BranchL.Text = "Your Branch:"
$BranchL.Size = "100,25"
$BranchL.Font = "Arial,10"
$BranchL.Location = "320,20"

$import = New-Object System.Windows.Forms.Button
$import.Size = "100,40"
$import.Text = "Save"
$import.Location = "140,280"
$import.add_CLICK({SAVEDOC})

#elsm
$Mainwin.controls.Add($info)

$Mainwin.controls.Add($Name)
$Mainwin.controls.Add($Address)
$Mainwin.controls.Add($Cell)
$Mainwin.controls.Add($Zip)
$Mainwin.controls.Add($Branch)
$Mainwin.controls.Add($BranchL)
$Mainwin.controls.Add($import)

#draw
$Mainwin.ShowDialog()

}

function SAVEDOC {
$uName = $name.Text
$uAddress = $address.Text
$uCell = $cell.Text
$uZip = $zip.Text
If ($Branch.SelectedIndex -eq "0") {$uBranch -eq "Bob"}
If ($Branch.SelectedIndex -eq "0") {$uBranch -eq "Pat"}
#
$data = "$uname , $uaddress , $ucell , $uzip ,$uBranch"
Add-content -Path "$path\ConradyAddressBook2022.csv" -value $data

}


main