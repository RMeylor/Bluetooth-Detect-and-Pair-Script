#please be sure to download the appropriate command line tools for this script at 
#https://bluetoothinstaller.com/bluetooth-command-line-tools/btdiscovery.html

#user input information with flavor text
    Write-Host "Now lets choose the Bluetooth device to connect too!" -ForegroundColor Red
        Start-sleep -s 1
    Write-Host "loading." -ForegroundColor Red
        Start-sleep -s 1
    Write-Host "loading.." -ForegroundColor Red
        Start-sleep -s 1
    Write-Host "loading..." -ForegroundColor Red

#looks through bluetooth devices and allows you to select a device to pair with
    $directory = btdiscovery -d%n%
    if ($directory.count -gt 1){
        for($i = 0; $i -lt $directory.count; $i++){
            Write-Host "$($i): $($directory[$i])" -ForegroundColor White
        }
        $selection = Read-Host -Prompt "Enter the number of the desired folder"
        $selected_device = $directory[$selection]
       Write-Host "You selected:" -ForegroundColor White;
       $device = $selected_device
       Write-Host "$device" -ForegroundColor Cyan;
    }

#uses selected device value and pairs too it
    #this bit will also unpair the device if it is already connected
    Write-Host "Unpairing device: $device" -ForegroundColor Red
        Start-sleep -s 1
    Write-Host "Please wait..." -ForegroundColor Red
btpair -u -n $device
    Write-Host "The device is unpaired" -ForegroundColor White
        Start-sleep -s 1
    Write-Host "Pairing device: $device" -ForegroundColor Red
        Start-sleep -s 1
    Write-Host "Please wait..." -ForegroundColor Red
        Start-sleep -s 1
    Write-host "*Note:* you may need to click on a Windows prompt and accept the PIN" -ForegroundColor Cyan
btpair -p -n $device