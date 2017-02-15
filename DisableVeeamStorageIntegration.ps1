Add-PSSnapin VeeamPSSnapin
$jobs = Get-VBRJob
foreach ($job in $jobs){
$options = $job.getoptions()
$options.SanIntegrationOptions.UseSanSnapshots = $False
Set-VBRJobOptions -Job $job -Options $options
}