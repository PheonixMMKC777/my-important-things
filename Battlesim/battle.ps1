
#init vars
$Path = Get-location

#region GraphicData

    $Player1img = (get-item "$Path/assets/Cecil_stand.png")
    $Player1img = [System.Drawing.Image]::Fromfile($Player1img)
    $Player1 = new-object Windows.Forms.PictureBox
    $Player1.Image = $Player1img
    $Player1.Size = "48,72"
    $Player1.Location = "400,30"

    $Player2img = (get-item "$Path/assets/Butts_stand.png")
    $Player2img = [System.Drawing.Image]::Fromfile($Player2img)
    $Player2 = new-object Windows.Forms.PictureBox
    $Player2.Image = $Player2img
    $Player2.Size = "48,72"
    $Player2.Location = "420,130"

    $Player3img = (get-item "$Path/assets/Setzer_stand.png")
    $Player3img = [System.Drawing.Image]::Fromfile($Player3img)
    $Player3 = new-object Windows.Forms.PictureBox
    $Player3.Image = $Player3img
    $Player3.Size = "48,72"
    $Player3.Location = "440,230"

#endregion GraphicData


Function main {
    

    $MainWindow = New-Object system.windows.forms.form
    $MainWindow.text = "text"
    $MainWindow.size = "600,500" 
    $MainWindow.BackColor = "Black"




    #Establish window Elements

    $MainWindow.Controls.Add($PLayer1)
    $MainWindow.Controls.Add($PLayer2)
    $MainWindow.Controls.Add($PLayer3)
    # Draw Window with established elements
    $MainWindow.ShowDialog()
}


Function LoadFighter1 {





}

main