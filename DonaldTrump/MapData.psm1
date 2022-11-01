
Write-Host "MapData.psm1 is loaded"
Add-Type -assembly System.Windows.Forms

Function EvaluateMapID {
    Write-Host "[System] Map Module Loaded"
    If ($MapID -eq "1") {EastMap}





}




Function EastMap {

    


    Write-Host "[System] EastMapLoaded"
    $Elevator.visible = $false





}


Function WipeScreen {







}
