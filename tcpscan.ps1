# Quick TCP Scanner

$ip = Read-Host -Prompt 'Hostname or IP to scan: '

# Example to hardcode host
# $ip="192.168.0.1"; 

# Specify ports to scan
# short list for easy editing
# $ports=(21,22,80,443);

# Full list from common services
$ports=(21,22,25,53,80,88,135,137,138,139,389,443,445,464,587,636,3128,3268,3269,3389,3660,5722,6000,9389,52311);

# main
foreach ($port in $ports)
    {try
        {$socket=New-object System.Net.Sockets.TCPClient ($ip,$port);}
        catch{};
        if ($socket -eq $NULL)
            {echo $ip":"$port" - Closed";}
        else{echo $ip":"$port" - Open";
        $socket = $NULL;}
     }
     
# Common port / services
# 21 FTP
# 22 SSH
# 25 SMTP
# 53 DNS
# 80 HTTP
# 88 Kerberos
# 135 Windows RPC
# 137 NetBIOS
# 138 NetBIOS
# 139 SMB
# 389 LDAP
# 443 HTTPS
# 445 SMB
# 464 Kerberos change/set password
# 587 SMTP
# 636 LDAP SSL
# 3128 TAD4D - Tivoli Inventory
# 3268 LDAP GC
# 3269 LDAP GC SSL
# 3389 RDP
# 3660 RTEM - Tivoli Monitoring
# 5722 RPC, DFSR (SYSVOL)
# 6000 SEA
# 9389 SOAP (AD DS WS)
# 52311 IEM
