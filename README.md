# FiZZ - A platform puzzle game for VIC20

Release: https://fleischgemuese.itch.io/vic-fizz

# Development

The game was developed with the cross-plattform IDE/Compiler Turbo Rascal (www.turborascal.com) 

# Installation

* Download TRSE: https://github.com/leuat/TRSE 
* Download VICE: https://vice-emu.sourceforge.io/
* Download Exomizer: https://csdb.dk/release/?id=198340
* Download CC1541: https://csdb.dk/release/?id=230166&show=notes
* Download .NET7: https://dotnet.microsoft.com/en-us/download/dotnet/7.0
* Use Powershell under Windows

Open TRSE -> Tools -> Settings: 

C64 Emulator: Path to x64sc.exe
Exomizer: Path to exomizer.exe


# Development disk version
For release  open Fizz project and Project Settings:
* Project output type: prg
* Target file: game.ras

* Run build script build.ps1

-> The D64 should now be ready