
$Path = Get-Location
$i = 0

$watch =  [system.diagnostics.stopwatch]::StartNew()


Add-Type -AssemblyName  System.windows.Forms

function main {

    $main_window = New-Object System.Windows.Forms.Form
    $main_window.Size = "200,200"
    $main_window.Location = "10,10"






    $time = New-Object System.Windows.Forms.Label
    $time.Text = $watch.Elapsed.TotalSeconds
    $time.size = "40,40"
    $time.Location = "20,20"


    $time2 = New-Object System.Windows.Forms.Label
    $time2.Text = $i
    $time2.size = "40,40"
    $time2.Location = "20,65"



    $Suffering = New-Object System.Windows.Forms.TextBox
    $Suffering.Size = "40,20"
    $Suffering.Location = "100,50"
    
 



    $Button = New-Object System.Windows.Forms.Button
    $button.Size = "60,30"
    $button.Location = "100,100"
    $button.Text = "Cancer"
    $button.Add_Click({CANCER})



    $main_window.Controls.Add($button)
    $main_window.Controls.Add($time)
    $main_window.Controls.Add($time2)
    $main_window.Controls.Add($Suffering)


    $main_window.ShowDialog()








}



function CANCER {

        
        $Hell = $Suffering.Text

        While ($watch.Elapsed.TotalSeconds -lt $Hell) {
        
        New-Item -Path "$path" -Name "Bruh$i" -value "Your mom gae `" -Micheal Jackson `" " -Force
        $i++
        $time.Text = $watch.Elapsed.TotalSeconds
        $time2.Text = $i
        Write-Host "Bruh count: $i" -foregroundcolor red

    }

}



MAIN





