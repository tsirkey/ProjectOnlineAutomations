$pwaUrls = (Get-AutomationVariable -Name PWAUrls).split("`n")

foreach($pwaUrl in $pwaUrls){

    Write-Output $pwaUrl

    Connect-PnPOnline -Url $pwaUrl -ManagedIdentity

    Set-PnPSite -Identity $pwaUrl -NoScriptSite $false

}