#programmed by pheonixmmkc777
# 10/28/2021


#init variables
$Steps = 0
$PlayerSpawn = "30,30"
$PlayerXAxis = 0
$PlayerYAxis = 0
$DeathXAxis = 100
$DeathYAxis = 100
$DeathXAxis2 = 200
$DeathYAxis2 = 200
$DeathXAxis3 = 220
$DeathYAxis3 = 10

$RandomTwenty  = 20,-20 
$Path = Get-Location


Add-Type -assembly System.Windows.Forms

function main {


    $MainWindow = New-Object System.Windows.Forms.Form
    $MainWindow.Size = "340,400"
    $MainWindow.Text = "Skull boi the Crappiest game"


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


    $UpButton = New-Object System.Windows.Forms.Button
    $UpButton.Size = "60,30"
    $UpButton.Text = "Up"
    $UpButton.Location = "140,290"
    $UpButton.ADD_CLICK({ShiftPlayerUp})


    $DownButton = New-Object System.Windows.Forms.Button
    $DownButton.Size = "60,30"
    $DownButton.Text = "Down"
    $DownButton.Location = "140,320"
    $DownButton.ADD_CLICK({ShiftPlayerDown})

    $PlayerScore = New-Object System.Windows.Forms.label
    $PlayerScore.Text = "Score `n$Steps"
    $PlayerScore.Size = "50,50"
    $playerScore.Location = "20,320"

    #Player Properties

    $Playerimg = (get-item "$Path/assets/skull.png")
    $Playerimg = [System.Drawing.Image]::Fromfile($Playerimg)
    $PlayerimgD = (get-item "$Path/assets/skullD.png")
    $PlayerimgD = [System.Drawing.Image]::Fromfile($PlayerimgD)
    $PlayerimgL = (get-item "$Path/assets/skullL.png")
    $PlayerimgL = [System.Drawing.Image]::Fromfile($PlayerimgL)
    $PlayerimgR = (get-item "$Path/assets/skullR.png")
    $PlayerimgR = [System.Drawing.Image]::Fromfile($PlayerimgR)

    $Player = new-object Windows.Forms.PictureBox
    $Player.Image = $Playerimg
    $player.Size = "20,20"

    # Death Enemy Properties

    $Deathimg = (get-item "$Path/assets/death.png")
    $Deathimg = [System.Drawing.Image]::Fromfile($Deathimg)




    $Death = new-object Windows.Forms.PictureBox
    $Death.Image = $Deathimg
    $Death.Size = "20,20"
    $Death.Location = "$DeathXAxis, $DeathYAxis"

    $Death2 = new-object Windows.Forms.PictureBox
    $Death2.Image = $Deathimg
    $Death2.Size = "20,20"
    $Death2.Location = "$DeathXAxis2, $DeathYAxis2"

    $Death3 = new-object Windows.Forms.PictureBox
    $Death3.Image = $Deathimg
    $Death3.Size = "20,20"
    $Death3.Location = "$DeathXAxis3, $DeathYAxis3"

    #poggers
    
    $MainWindow.Controls.Add($Player)
    $MainWindow.Controls.Add($Death)
    $MainWindow.Controls.Add($Death2)
    $MainWindow.Controls.Add($Death3)

    $MainWindow.Controls.Add($RightButton)
    $MainWindow.Controls.Add($LeftButton)
    $MainWindow.Controls.Add($UpButton)
    $MainWindow.Controls.Add($DownButton)
    $MainWindow.Controls.Add($PlayerScore)
    #keep me low
    $MainWindow.ShowDialog()

}


#PlayerMovement


Function ShiftPlayerLeft {

    $Player.Image = $PlayerimgL
    $script:PlayerXAxis = $PlayerXAxis - 10
    
    CheckLegalMove
    DeathWiggle
    CheckKillZone

    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    GetPlayerDebug
    $script:Steps++
    $PlayerScore.Text = "Score `n$Steps"
}


Function ShiftPlayerRight {

    $Player.Image = $PlayerimgR
    $script:PlayerXAxis = $PlayerXAxis + 10
    CheckLegalMove
    DeathWiggle
    CheckKillZone

    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    GetPlayerDebug
    $script:Steps++
    $PlayerScore.Text = "Score `n$Steps"
}


Function ShiftPlayerDown {

    $Player.Image = $PlayerimgD
    $script:PlayerYAxis = $PlayerYAxis + 10
    CheckLegalMove
    DeathWiggle
    CheckKillZone

    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    GetPlayerDebug
    $script:Steps++
    $PlayerScore.Text = "Score `n$Steps"
}

Function ShiftPlayerUp {

    $Player.Image = $Playerimg
    $script:PlayerYAxis = $PlayerYAxis - 10
    CheckLegalMove
    DeathWiggle
    CheckKillZone

    $Player.Location = "$PlayerXAxis,$PlayerYAxis"
    GetPlayerDebug
    $script:Steps++
    $PlayerScore.Text = "Score `n$Steps"
}

function CheckLegalMove {


If ($PlayerXAxis -lt "0") {ShiftPlayerRight}
If ($PlayerXAxis -gt "300") {ShiftPlayerLeft}
If ($PlayerYAxis -gt "240") {ShiftPlayerUp}
If ($PlayerYAxis -lt "0") {ShiftPlayerDown}

}

Function CheckKillZone {

If ($Player.Location -eq $Death.Location) {GameOver}
If ($Player.Location -eq $Death2.Location) {GameOver}
If ($Player.Location -eq $Death3.Location) {GameOver}


}

#Entity Things

Function DeathWiggle {

    #Death Number 1

$CalcDeathXAxis = $RandomTwenty | Get-Random
$CalcDeathYAxis = $RandomTwenty | Get-Random

$script:DeathXAxis = $DeathXAxis + $CalcDeathXAxis
$script:DeathYAxis = $DeathYAxis + $CalcDeathYAxis

If ($DeathXAxis -lt 0) {$script:DeathXAxis = $DeathXAxis + 20}
If ($DeathYAxis -lt 0) {$script:DeathYAxis = $DeathYAxis + 20}
If ($DeathXAxis -gt 300) {$script:DeathXAxis = $DeathXAxis - 20}
If ($DeathYAxis -gt 240) {$script:DeathYAxis = $DeathYAxis - 20}

$Death.Location = "$DeathXAxis,$DeathYAxis"


    #Death Number 2

$CalcDeathXAxis2 = $RandomTwenty | Get-Random
$CalcDeathYAxis2 = $RandomTwenty | Get-Random

$script:DeathXAxis2 = $DeathXAxis2 + $CalcDeathXAxis2
$script:DeathYAxis2 = $DeathYAxis2 + $CalcDeathYAxis2

If ($DeathXAxis2 -lt 0) {$script:DeathXAxis2 = $DeathXAxis2 + 20}
If ($DeathYAxis2 -lt 0) {$script:DeathYAxis2 = $DeathYAxis2 + 20}
If ($DeathXAxis2 -gt 300) {$script:DeathXAxis2 = $DeathXAxis2 - 20}
If ($DeathYAxis2 -gt 240) {$script:DeathYAxis2 = $DeathYAxis2 - 20}

$Death2.Location = "$DeathXAxis2,$DeathYAxis2"


    #Death Number 3

$CalcDeathXAxis3 = $RandomTwenty | Get-Random
$CalcDeathYAxis3 = $RandomTwenty | Get-Random

$script:DeathXAxis3 = $DeathXAxis3 + $CalcDeathXAxis3
$script:DeathYAxis3 = $DeathYAxis3 + $CalcDeathYAxis3

If ($DeathXAxis3 -lt 0) {$script:DeathXAxis3 = $DeathXAxis3 + 20}
If ($DeathYAxis3 -lt 0) {$script:DeathYAxis3 = $DeathYAxis3 + 20}
If ($DeathXAxis3 -gt 300) {$script:DeathXAxis3 = $DeathXAxis3 - 20}
If ($DeathYAxis3 -gt 240) {$script:DeathYAxis3 = $DeathYAxis3 - 20}

$Death3.Location = "$DeathXAxis3,$DeathYAxis3"

}


Function GetPlayerDebug {

    #Debugger

Write-Host "[Player] X: $PlayerXAxis Y: $PlayerYAxis"


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



main