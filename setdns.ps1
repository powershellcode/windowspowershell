
#### ≈‰÷√±æµÿDNS

$dns1='10.202.0.53'
$dns2='10.202.0.54'
get-wmiobject win32_networkadapter -filter "NetConnectionstatus=2"|foreach{
if ($_.NetConnectionID -ne '')
{
$c=$_.NetConnectionID
netsh interface ip set dns name=$c source=static addr=none
netsh interface ip add dns name=$c addr=$dns1 index=1
netsh interface ip add dns name=$c addr=$dns2 index=2
}
}

