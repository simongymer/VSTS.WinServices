[CmdletBinding()]
Param()

[string]$serviceName = Get-VstsInput -Name serviceName -Require

Write-Output "Stopping $serviceName..."

$serviceInstance = Get-Service $serviceName -ErrorAction SilentlyContinue
if ($serviceInstance -ne $null) {
    Stop-Service $serviceName -Force
    $serviceInstance.WaitForStatus('Stopped', '00:01:00')
    Write-Output "Service $serviceName stopped."
} else {
    Write-Output "The $serviceName service could not be located."
}




