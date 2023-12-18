cc1541.exe -n fizz -d 19 -w "flash.prg" -f "l" loadtest_disk1.d64 


cc1541.exe -n fizz -d 19 -w ".\levels\l" -f "l" boot_disk1.d64 

Get-ChildItem -Path ".\levels\s*" |

Foreach-Object {

    cc1541.exe -n fizz -d 19 -w $_.FullName -f $_.BaseName boot_disk1.d64 
    Write-Host $_.BaseName

}

Get-ChildItem -Path ".\levels\m*" |

Foreach-Object {

    cc1541.exe -n fizz -d 19 -w $_.FullName -f $_.BaseName boot_disk1.d64 
    Write-Host $_.BaseName

}