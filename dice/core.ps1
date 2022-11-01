


$Path = Get-Location
$P1Level = 1
$P1Attack = 1
$P1Defense = 1
$P1MaxHP = 6
$P1CurHP = 6

function main {


    $MainWindow = New-Object System.Windows.Forms.Form
    $MainWindow.Text = "dice"
    $MainWindow.Size = "620,620"

    $PFPimg = (get-item "$Path/assets/Xina.jpg")
    $PFPimg = [System.Drawing.Image]::Fromfile($PFPimg)
    $PFP = new-object Windows.Forms.PictureBox
    $PFP.Image = $PFPimg
    $PFP.Size = "60,60"
    $PFP.Location = "10,10"

    $PlayerLev = New-Object System.Windows.Forms.Label
    $PlayerLev.Text = "Xina Lv.$P1Level"
    $PlayerLev.Location = "80,20"
    $PlayerLev.size = "100,18"

    $PlayerATT = New-Object System.Windows.Forms.Label
    $PlayerATT.Text = "Attack: $P1Attack"
    $PlayerATT.Location = "80,40"
    $PlayerATT.size = "100,18"

    $PlayerDEF = New-Object System.Windows.Forms.Label
    $PlayerDEF.Text = "Defense: $P1Defense"
    $PlayerDEF.Location = "80,60"
    $PlayerDEF.size = "100,18"

        #Win elems
    
    $MainWindow.Controls.Add($PFP)
    $MainWindow.Controls.Add($PlayerATT)
    $MainWindow.Controls.Add($PlayerDEF)
    $MainWindow.Controls.Add($PlayerLev)

        #Keep on bottom
    $MainWindow.ShowDialog()

}



main



