$Path = Get-Location

$PlayWav=New-Object System.Media.SoundPlayer

$PlayWav.SoundLocation="$Path\tail.wav"

$PlayWav.playsync()