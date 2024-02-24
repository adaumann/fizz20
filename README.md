How to run FiZZ (VIC20)

* Download TRSE: https://github.com/leuat/TRSE 
* Download VICE: https://vice-emu.sourceforge.io/
* Download Exomizer: https://csdb.dk/release/?id=198340
* Download CC1541: https://csdb.dk/release/?id=230166&show=notes
* Download .NET7: https://dotnet.microsoft.com/en-us/download/dotnet/7.0
* Use Powershell under Windows

Open TRSE -> Tools -> Settings: 

Vic20 Emulator: Path to xvic.exe
Exomizer: Path to exomizer.exe

b) Development disk version

For release  open Fizz project and Project Settings:
* Project output type: prg
* Target file: game.ras

* Run build script build.ps1

-> The D64 should now be ready

NOTE: With version 0.17.110 it is running, use older version https://github.com/leuat/TRSE/commits/nightly