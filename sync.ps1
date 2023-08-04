param (
    $ConfigRepoPath = 'E:\Git\csgo-config',
    $ConfigGamePath = 'C:\Program Files (x86)\Steam\userdata\914786436\730\local\cfg'
)

Get-ChildItem -Path $ConfigRepoPath | Where-Object {
    $_.Name -in ('autoexec.cfg', 'training.cfg', 'knife.cfg', 'video.txt')
} | Copy-Item -Destination $ConfigGamePath -Recurse -Force -Verbose

Set-ItemProperty -Path "$ConfigGamePath\video.txt" -Name IsReadOnly -Value $true -Verbose
