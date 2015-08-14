
##计算机加入域

$h=hostname

netdom join $h  /domain:XDFDC.CN /userd:wangjianheng-admin /passwordd:"xxxxx"

net localgroup administrators xdfdc\sqlserverdba /add

net localgroup administrators xdfdc\implement-baoming /add