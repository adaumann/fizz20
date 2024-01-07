Remove-Item ".\boot"
Remove-Item ".\var"
Remove-Item ".\vai"
Remove-Item ".\intro"
Remove-Item ".\fizz.d64"

# Specify the path to your binary file
$filePath = "game.prg"

# Specify the ranges to extract
$range1Start = 0x1201 - 0x0400
$range1End = 0x7FFF - 0x0400

$range2Start = 0xA000 - 0x0400
$range2End = 0xAED0 - 0x0400

$range3Start = 0x0400 - 0x0400
$range3End = 0x0FFF - 0x0400

# Specify the output file paths
$outputFilePath1 = "boot"
$outputFilePath2 = "cod"
$outputFilePath3 = "var"
# $extra = "-d 19"
$extra = ""
try {
    # Read the entire content of the binary file
    $fileContent = Get-Content -Path $filePath -Raw -Encoding Byte

    # Extract content from the specified ranges
    $extractedRange1 = $fileContent[$range1Start..$range1End]
    $extractedRange2 = $fileContent[$range2Start..$range2End]
    $extractedRange3 = $fileContent[$range3Start..$range3End]
    $extractedRange1[0] =[byte] 0x01
    $extractedRange1[1] =[byte] 0x12


    # Save the extracted content to files
    $extractedRange1 | Set-Content -Path $outputFilePath1 -Encoding Byte
    $extractedRange2 | Set-Content -Path $outputFilePath2 -Encoding Byte
    $extractedRange3 | Set-Content -Path $outputFilePath3 -Encoding Byte

    # exomizer.exe sfx basic boot.raw -o boot -t 55

    # Specify the path to your binary file
    $filePath = "intro.prg"

    # Specify the ranges to extract
    $range1Start = 0x1201 - 0x0400
    $range1End = 0x2800 - 0x0400

    $range3Start = 0x0400 - 0x0400
    $range3End = 0x0500 - 0x0400

    # Specify the output file paths
    $outputFilePath1 = "intro"
    $outputFilePath3 = "vai"
    # Read the entire content of the binary file
    $fileContent = Get-Content -Path $filePath -Raw -Encoding Byte

    # Extract content from the specified ranges
    $extractedRange1 = $fileContent[$range1Start..$range1End]
    $extractedRange3 = $fileContent[$range3Start..$range3End]
    $extractedRange1[0] =[byte] 0x01
    $extractedRange1[1] =[byte] 0x12
    

    # Save the extracted content to files
    $extractedRange1 | Set-Content -Path $outputFilePath1 -Encoding Byte
    $extractedRange3 | Set-Content -Path $outputFilePath3 -Encoding Byte

    # exomizer.exe sfx basic intro.raw -o intro -t 55
    #exomizer.exe sfx $1300 intropacked.prg boot,$3000 -o fizz -t 55

    cc1541.exe -n fizz $extra -q -w "intro" -f "intro" fizz.d64 
    cc1541.exe -n fizz $extra -q -w "boot" -f "boot" fizz.d64 
    cc1541.exe -n fizz $extra -q -w "vai" -f "vai" fizz.d64 
    cc1541.exe -n fizz $extra -q -w "cod" -f "cod" fizz.d64 
    cc1541.exe -n fizz $extra -q -w "var" -f "var" fizz.d64 

    dotnet LevConv\bin\Debug\net7.0\LevConv.dll -i levelsSrc\baseLevels.json -e levels -h false

    Get-ChildItem -Path ".\levels\s*" |

    Foreach-Object {
        cc1541.exe -n fizz -q $extra -w $_.FullName -f $_.BaseName fizz.d64 
    }
    Write-Host "Single done"
    
    Get-ChildItem -Path ".\levels\m*" |

    Foreach-Object {
    
        cc1541.exe -n fizz  -q $extra -w $_.FullName -f $_.BaseName fizz.d64 
    }  
    Write-Host "Multi done"
}
catch {
    Write-Host "Error: $_"
}


  xvic fizz.d64