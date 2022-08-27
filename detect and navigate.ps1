Write-Host "Now lets choose the Bluetooth device to connect too!" -ForegroundColor Yellow
  Start-sleep -s 1

    $directory = btdiscovery -d%n%
    if ($directory.count -gt 1){
        for($i = 0; $i -lt $directory.count; $i++){
            Write-Host "$($i): $($directory[$i])"
        }
        $selection = Read-Host -Prompt "Enter the number of the desired folder"
        $selected_folder = $directory[$selection]
       Write-Host "You selected:" -ForegroundColor Green;
       $foldername = $selected_folder
       Write-Host "$foldername" -ForegroundColor Magenta;
    
    }