$Server='tdwlistener'
$User='bulent.uysal'
$Primary = Invoke-DbaQuery -SqlInstance $Server -Query "select @@servername as servername;" -As SingleValue -EnableException
$Replicas = Get-DbaAgReplica -SqlInstance $Primary -EnableException | where {$_.Role -eq "Secondary" -and $_.Name -ne $Primary} | select -ExpandProperty Name -Unique
Copy-DbaLogin -Source $Primary -Destination $Replicas -Login $User -Force -EnableException | ft