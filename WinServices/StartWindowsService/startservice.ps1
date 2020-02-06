[CmdletBinding()]
Param()

[string]$serviceName = Get-VstsInput -Name serviceName -Require

Write-Output "Starting $serviceName..."

$serviceInstance = Get-Service $serviceName
if ($serviceInstance.Status -eq "Running") {
    Write-Output "The $serviceName service is already running."
} else {
    start-service $serviceName
    $serviceInstance.WaitForStatus('Running', '00:01:00')
    Write-Output "Started $serviceName"
}
