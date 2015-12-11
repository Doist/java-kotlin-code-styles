Write-Host ""
Write-Host "Installing Doist code style configs..."
Write-Host ""

$arr = Get-ChildItem "$Env:userprofile\.AndroidStudio*\config" |
       Where-Object {$_.PSIsContainer} |
       Foreach-Object {$_.FullName}

Foreach($path in $arr)
{
    Write-Host "Copying codestyle to " $path\codestyles
    if(Test-Path $path)
    {
        New-Item -ItemType Directory -Path $path\codestyles -ErrorAction Ignore

        Copy-Item $PSScriptRoot\configs\* -Destination $path\codestyles -Force
    }
}

Write-Host "Done."
Write-Host ""
Write-Host "Restart IntelliJ and/or AndroidStudio, go to preferences, and apply 'DoistAndroid'."
Read-Host "Press ENTER to quit"
