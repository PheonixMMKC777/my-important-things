$Path = Get-Location
Add-Type -AssemblyName System.windows.forms

function MAIN {

$mainwindow = New-Object System.Windows.Forms.Form
$mainwindow.Size = "400,400"
$mainwindow.Text = "bruh"


<#

    $PawnW = (get-item "$Path/assets/PawnW.bmp")
    $PawnW = [System.Drawing.Image]::Fromfile($PawnW)

    $PawnW_1 = new-object Windows.Forms.PictureBox
    $PawnW_1.Image = $PawnW
    $PawnW_1.Size = "100,100"
    $PawnW_1.Location = "10,10"

    #>

#Window Elements
$mainwindow.Controls.Add($PawnW_1)

#Draw Window
$mainwindow.ShowDialog()

}


MAIN