#programmed by pheonixmmkc777
# 10/28/2021

$Path = Get-Location

Import-module "$Path\MapData.psm1"


#init variables
$MapID = 0
$Steps = 0
$PlayerSpawn = "30,30"
$PlayerXAxis = 0
$PlayerYAxis = 200
$DeathXAxis = 100
$DeathYAxis = 100
$DeathXAxis2 = 200
$DeathYAxis2 = 200
$DeathXAxis3 = 220
$DeathYAxis3 = 10

$RandomTwenty  = 20,-20 



Add-Type -assembly System.Windows.Forms

function main {


    $MainWindow = New-Object System.Windows.Forms.Form
    $MainWindow.Size = "340,400"
    $MainWindow.Text = "asd"


    $LeftButton = New-Object System.Windows.Forms.Button
    $LeftButton.Size = "60,30"
    $LeftButton.Text = "Left"
    $LeftButton.Location = "80,320"
    $LeftButton.ADD_CLICK({ShiftPlayerLeft})

    $RightButton = New-Object System.Windows.Forms.Button
    $RightButton.Size = "60,30"
    $RightButton.Text = "Right"
    $Rightbutton.Location = "200,320"
    $Rightbutton.ADD_CLICK({ShiftPlayerRight})



    #Player Properties

    $Playerimg = (get-item "$Path/assets/TrumpIdle.png")
    $Playerimg = [System.Drawing.Image]::Fromfile($Playerimg)
    $PlayerimgL = (get-item "$Path/assets/TrumpIdleL.png")
    $PlayerimgL = [System.Drawing.Image]::Fromfile($PlayerimgL)
    $Player = new-object Windows.Forms.PictureBox
    $Player.Image = $Playerimg
    $player.Size = "40,40"
    $Player.Location = "$PlayerXAxis, $playerYAxis"

    #Map Properties

    $Elevatorimg = (get-item "$Path/assets/ElevatorA.png")
    $Elevatorimg = [System.Drawing.Image]::Fromfile($Elevatorimg)
    $Elevator = new-object Windows.Forms.PictureBox
    $Elevator.Image = $Playerimg
    $Elevator.Size = "40,40"
    $Elevator.Location = "200, 200"



    #poggers
    
    $MainWindow.Controls.Add($Player)
    $MainWindow.Controls.Add($Elevator)
    $MainWindow.Controls.Add($Death)
    $MainWindow.Controls.Add($Death2)
    $MainWindow.Controls.Add($Death3)

    $MainWindow.Controls.Add($RightButton)
    $MainWindow.Controls.Add($LeftButton)


    #keep me low
    $MainWindow.ShowDialog()

}


#PlayerMovement


Function ShiftPlayerLeft {

    $Player.Image = $PlayerimgL
    $script:PlayerXAxis = $PlayerXAxis - 10    
    CheckLegalMove
    ElevatorCheck
    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    GetPlayerDebug
    EastMap

}


Function ShiftPlayerRight {

    $Player.Image = $Playerimg
    $script:PlayerXAxis = $PlayerXAxis + 10
    CheckLegalMove
    ElevatorCheck
    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    GetPlayerDebug

}


function CheckLegalMove {


If ($PlayerXAxis -lt "0") {ShiftPlayerRight}
If ($PlayerXAxis -eq "290") {$MapID = 1}
EvaluateMapID


}

Function CheckKillZone {

#no death

}

#Entity Things




Function GetPlayerDebug {

    #Debugger

Write-Host "[Player] X: $PlayerXAxis Y: $PlayerYAxis"
EastMap


}

Function Gameover {

    $GameOver = New-Object System.Windows.Forms.Form
    $Gameover.Text = "RIP"
    $GameOver.Size = "215,175"

    $Loser = New-object System.Windows.Forms.Label
    $Loser.Text = "    Wow! You suck"
    $Loser.Size = "200, 60"
    $Loser.Location = "5,10"
    $Loser.Font = "Goudy Stout, 15"

    $ExitGameover = New-Object System.Windows.Forms.Button
    $ExitGameover.Size = "60,30"
    $ExitGameover.Text = "Yes I do"
    $ExitGameover.Location = "70,80"
    $ExitGameover.ADD_CLICK({stop-process -Id $PID})

    $Highscore = New-object System.windows.forms.label
    $Highscore.Text = "Score: $Steps"
    $Highscore.size = "60,25"
    $Highscore.location = "70,120"

    #youknowthedrill

    $Gameover.Controls.Add($Loser)
    $Gameover.Controls.Add($ExitGameover)
    $Gameover.Controls.Add($Highscore)
    $Gameover.ShowDialog()

}



 Function ElevatorCheck {
  
 If ($PlayerXAxis -eq "200" -and $PlayerYAxis -eq "200") {
 
 Elevator1
 
 }
 
 
 }

function Elevator1 {

    $script:PlayerYAxis = $PlayerYAxis - 10
    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    Start-Sleep -Milliseconds 50
    $script:PlayerYAxis = $PlayerYAxis - 10
    $Player.Location = "$PlayerXAxis,$PlayerYAxis" 
    Start-Sleep -Milliseconds 50
    $script:PlayerYAxis = $PlayerYAxis - 10
    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    Start-Sleep -Milliseconds 50
    $script:PlayerYAxis = $PlayerYAxis - 10
    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    Start-Sleep -Milliseconds 50

}








#Game Loop
$GameState = 0
While ($GameState -eq 0){

main
}