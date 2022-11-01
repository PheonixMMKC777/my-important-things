

Add-type -AssemblyName System.windows.forms

#initVaris

$TotalClick = 0
$ClickLevel = 1
$Rank = "Noob"
$EXP = 0
$Path = Get-Location
$TrumpBought = "$False"
$MarioBought = "$False"
$obamaX = 0..400
$obamaY = 100..250
$China = 0
 


function MAIN {


    $MainWindow = New-Object System.Windows.Forms.Form
    $MainWindow.Text = "Trump Tycoon"
    $MainWindow.Size = "620,620"

    $ClickCount = New-Object System.Windows.Forms.Label
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
    $ClickCount.Size = "200,80"
    $ClickCount.Location = "230,10"
    $CLickCount.Font = "Arial, 18"

    $ClickButton = New-Object System.Windows.Forms.Button
    $ClickButton.Text = "Click me"
    $ClickButton.size = "80,50"
    $ClickButton.Location = "230,300"
    $CLickButton.Add_Click{UpdateClick}

    $LevelUpClick1 = New-Object System.Windows.Forms.Button
    $LevelUpClick1.Text = "20 cash `nPower +1"
    $LevelUpClick1.size = "80,50"
    $LevelUpClick1.Location = "230,360"
    $LevelUpClick1.Add_Click{LevelUpClickBy1}

    $LevelUpClick5 = New-Object System.Windows.Forms.Button
    $LevelUpClick5.Text = "100 cash `nPower +5"
    $LevelUpClick5.size = "80,50"
    $LevelUpClick5.Location = "330,360"
    $LevelUpClick5.Add_Click{LevelUpClickBy5}

    $LevelUpClick10 = New-Object System.Windows.Forms.Button
    $LevelUpClick10.Text = "200 cash `nPower +10"
    $LevelUpClick10.size = "80,50"
    $LevelUpClick10.Location = "230,420"
    $LevelUpClick10.Add_Click{LevelUpClickBy10}

    $LevelUpClick100 = New-Object System.Windows.Forms.Button
    $LevelUpClick100.Text = "2000 cash `nPower +100"
    $LevelUpClick100.size = "80,50"
    $LevelUpClick100.Location = "330,420"
    $LevelUpClick100.Add_Click{LevelUpClickBy100}


    $BuyTrump = New-Object System.Windows.Forms.Button
    $BuyTrump.Text = "1000 cash `nTrump"
    $BuyTrump.size = "80,50"
    $BuyTrump.Location = "430,360"
    $BuyTrump.Add_Click{PurchaseTrump}


    $BuyMario = New-Object System.Windows.Forms.Button
    $BuyMario.Text = "10000 cash `nMario"
    $BuyMario.size = "80,50"
    $BuyMario.Location = "430,420"
    $BuyMario.Add_Click{PurchaseMario}

    $BuyObama = New-Object System.Windows.Forms.Button
    $BuyObama.Text = "100000 cash `nObamaium"
    $BuyObama.size = "80,50"
    $BuyObama.Location = "430,300"
    $BuyObama.Add_Click{PurchaseObama}


    #region SLAVES
    $Kimimg = (get-item "$Path/assets/Kim.png")
    $Kimimg = [System.Drawing.Image]::Fromfile($Kimimg)
    $Trumpimg = (get-item "$Path/assets/Trump.png")
    $Trumpimg = [System.Drawing.Image]::Fromfile($Trumpimg)
    $Trump = new-object Windows.Forms.PictureBox
    $Trump.Image = $Trumpimg
    $Trump.Size = "40,40"
    $Trump.Location = "100,100"
    $Trump.Add_CLick{TrumpDialouge}

    $TrumpText = New-object System.windows.Forms.label
    $TrumpText.Size = "40,40"
    $Trumptext.location = "105, 90"
    $TrumpText.Font = "Arial, 6"

    $marioimg = (get-item "$Path/assets/Mario.png")
    $marioimg = [System.Drawing.Image]::Fromfile($marioimg)
    $Mario = new-object Windows.Forms.PictureBox
    $Mario.Image = $marioimg
    $Mario.Size = "123,89"
    $Mario.Location = "400,150"
    $Mario.Add_CLick{MarioTime}


    $Obamaimg = (get-item "$Path/assets/Obamium.Jpg")
    $Obamaimg = [System.Drawing.Image]::Fromfile($Obamaimg)
    $ObamaimgB = (get-item "$Path/assets/ObamiumB.png")
    $ObamaimgB = [System.Drawing.Image]::Fromfile($ObamaimgB)
    $ObamaimgO = (get-item "$Path/assets/ObamiumO.png")
    $ObamaimgO = [System.Drawing.Image]::Fromfile($ObamaimgO)
    $ObamaimgS = (get-item "$Path/assets/ObamiumS.png")
    $ObamaimgS = [System.Drawing.Image]::Fromfile($ObamaimgS)
    $ObamaimgL = (get-item "$Path/assets/ObamiumL.png")
    $ObamaimgL = [System.Drawing.Image]::Fromfile($ObamaimgL)
    $ObamaimgY = (get-item "$Path/assets/ObamiumY.png")
    $ObamaimgY = [System.Drawing.Image]::Fromfile($ObamaimgY)
    $Obama = new-object Windows.Forms.PictureBox
    $Obama.Image = $Obamaimg
    $Obama.Size = "50,50"
    $Obama.Add_CLick{ObamaTime}
    $obamaArmy = $ObamaimgB, $Obamaimg, $ObamaimgO, $ObamaimgS, $ObamaimgL, $ObamaimgY



    #endregion SLAVES



    #window Elements
    $MainWindow.Controls.Add($ClickCount)
    $MainWindow.Controls.Add($ClickButton)
    $MainWindow.Controls.Add($LevelUpClick1)
    $MainWindow.Controls.Add($LevelUpClick5)
    $MainWindow.Controls.Add($LevelUpClick10)
    $MainWindow.Controls.Add($LevelUpClick100)
    $MainWindow.Controls.Add($BuyTrump)
    $MainWindow.Controls.Add($BuyMario)

    $MainWindow.Controls.Add($BuyObama)

    #Keep on bottom
    $MainWindow.ShowDialog()

}



function updateclick {


    
    $script:TotalClick = $TotalClick + $ClickLevel
    $script:GrandClick = $GrandClick + 1
        $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"



}



function LevelUpClickBy1 {

    If ($TotalClick -ge 20) {
        
        $script:ClickLevel = $ClickLevel + 1
        $script:TotalClick = $TotalClick - 20
        Debugger
    }
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
}

function LevelUpClickBy5 {

    If ($TotalClick -ge 80) {
        
        $script:ClickLevel = $ClickLevel + 5
        $script:TotalClick = $TotalClick - 80
        Debugger
    }
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
}

function LevelUpClickBy10 {

    If ($TotalClick -ge 200) {
        
        $script:ClickLevel = $ClickLevel + 10
        $script:TotalClick = $TotalClick - 200
        Debugger
    }
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"

}


function LevelUpClickBy100 {

    If ($TotalClick -ge 2000) {
        
        $script:ClickLevel = $ClickLevel + 100
        $script:TotalClick = $TotalClick - 2000
        Debugger
    }
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"

}

Function PurchaseTrump {

    If ($TrumpBought -eq "$false") {
        If ($TotalClick -ge 1000) {
            $MainWindow.Controls.Add($trump)
            $TrumpBought = "$true"
                $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
            Debugger
        }    
    }
}

Function PurchaseMario {

    If ($TrumpBought -eq "$false") {
        If ($TotalClick -ge 10000) {
            $MainWindow.Controls.Add($mario)
            $MarioBought = "$true"
                $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
            Debugger
        }    
    }
}

Function PurchaseObama {

    If ($TrumpBought -eq "$false") {
        If ($TotalClick -ge 100000) {
            $MainWindow.Controls.Add($obama)
            $MarioBought = "$true"
                $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
            Debugger
        }    
    }
}


Function TrumpDialouge {


    $TrumpText.text = "CHINA!"
    $MainWindow.Controls.Add($Trumptext)
    Start-Sleep -milliseconds 500
    $MainWindow.Controls.Remove($Trumptext)
    Write-Host "[SYS] Trump Spoke"
    $script:China++
    if ($China -gt 4) {
    $script:Rank = "Commie"
    $Trump.Image = $kimimg
    $script:TotalClick = $TotalClick - 1000
    }
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"



}


function MarioTime {

$script:XFlyTime = 400

while ($TotalClick -gt 400) {
    
    $Mario.Location = "$script:XFlyTime, 150"
    $script:XFlyTime--
    if ($script:XFlyTime -le 1) {CorrectMarioValues}
    if ($script:XFlyTime -ge 700) {CorrectMarioValues}
    $Script:totalClick = $Script:totalClick - 10 
    $Mario.Location = "$script:XFlyTime, 150"
    $script:Rank = "Luigi"
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
    }

}



function ObamaTime {


    $script:ObamaXR = $obamaX | Get-Random
    $script:ObamaYR = $obamaY | Get-Random
    $obama.Location = "$ObamaXR, $ObamaYR"
    $Script:totalClick = $Script:totalClick + 100000
    $script:Rank = "dem"
    $ClickCount.Text = "Cash: $TotalClick `nPower: $ClickLevel `nRank: $Rank"
    $Obama.Image = $ObamaArmy | Get-Random    
    Start-Process "$Path/assets/win.mp3"
    THROW "you win retard"

}


function CorrectMarioValues {


    If ($script:XFlyTime -le 1) {
    $script:XFlyTime = 620
    $Mario.Location = "$script:XFlyTime, 150"
    }

    If ($script:XFlyTime -le 700) {
    $script:XFlyTime = 620
    $Mario.Location = "$script:XFlyTime, 150"
    }

}



Function Debugger {

Write-Host "[===]================================="
Write-Host "[SYS] Cash: $TotalClick"
Write-Host "[SYS] Power: $ClickLevel"
Write-Host "[SYS] Grand: $GrandClick"


}







MAIN