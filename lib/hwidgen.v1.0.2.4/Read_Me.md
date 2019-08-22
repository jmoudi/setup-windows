In Windows 10 all systems no matter how they were activated (be it via Upgrade from Windows 7/8.1 or by using a bought Retail or an embedded BIOS aka MSDM license) will be converted to a Digital License which is based on the Hard Ware ID (HWID) of the respective machine. This License is stored at MS Servers and will activate this machine every time it's freshly installed. Only hardware changes will cause the License being invalidated. By binding it to a Microsoft Account (MSA) you will be able to transfer it in latter case.

The process only needs to be performed once per machine. In later installs just skip any key prompts (choose 'I have no product key' during setup) and at first online contact the MS Server will regocnize the HWID and grant activation automatically. 

NOTE: When a Volume License version is installed from VLSC or MVS Business ISO, the default Retail/OEM key needs to be inserted to regain acticvation.

It's actually quite simple and doesn't mess with any system files and leaked (*errrm stolen) keys. 

The ticket creation has been appropriately refined for each MS SKU edition so that the Manual Method below is fully applicable to all of them. The Automated Method has been included as well for an easiest activation and works with all MS SKU editions and was specifically devised for the following ones: 

Supported Windows 10 editions (SKUs):

Core (Home) (N)
CoreSingleLanguage (N)
Professional (N)
ProfessionalEducation (N)
ProfessionalWorkstation (N)
Education (N)
Enterprise (N)
EnterpriseS  (N)

AUTOMATED METHOD: 

In case any VPN is used, deactivate it for the process duration. 

NOTE:   The tool performs several system checks and may need a moment to appear (depending on your system specs), no need to panic, just wait a moment. Thanks.

Silent Mode: hwidgen.mk3 silent

File: hwidgen.mk3.exe
BLAKE2sp: 5b07279fcb5601b43b62d1bdf686dd9ec822afe022e9791556d3760fd00eabfa
CRC64: 04854a5bf82ea9f3
MD5: e18c5191ff5e28516292e2c1a2db042c
SHA-1: 5c0f50125c9651e1acb3468e7460381ef3aa7917
SHA-256: 4d7b8701a8de74b6192d6946d8040ea79546314bc2b12babbc873d89e6a16ec0
SHA-384: ebcf946c126ad8b09114a330171ce94771bf2cbfb37d9ea556ee111a21b9cd3cdbf761d89311ddf275279a1cf4ff0711
SHA-512: 376eedb48ef201ced43d5e54aa10912597480e50e50e5c38e60e53460f9a760a10914e8016b409e62a2b2430e6ac8c8d1bd8037888cbbc9c5ac3a1839e612e0e
SHA3-224: ae3775dda001aae20820a1402803ba8ddd9e5d9a11a3a423e211ca7b
SHA3-256: e8bf788eb2dc4f67b26d5ad3d17e04a9d66ba308711d33d4886d49973b4bec67

VirusTotal Result:
https://www.virustotal.com/#/file/4d7b8701a8de74b6192d6946d8040ea79546314bc2b12babbc873d89e6a16ec0/detection

Changelog:

v10.24 fixed incorrect reg delete (thanks to angelkyo for the hint)

v10.21 corrected the Win 7 compat entry (thanks to the alert source)

v10.18 fixed broken LTSB 2016 process

v10.15 added Enterprise LTSB 2015 (N) support (tested on non-N version) (thanks to hwidmod for the gatherosstate.exe needed)

v10.08 added Key-Install-Mode (Drop-Down-Menu) to allow fast switch to Retail/OEM on re-Installs with VL ISO, which already have HWID and don't need the whole process, tool will show this key in System Info if not installed

v10.01 changed process slightly to run gatherosstate.exe in Win 7 compatibility mode, so created ticket will have operation system info set to Windows 7, this better mimiks the original ticket from a Win 7 system

             optimized the Splash screens

 

v9.32 added hyperlinks to nsane and aiowares forums threads for info and support

v9.25 changed the initial Msgbox to splash screen with no user intervention

v9.18 reworked system check

v9.11 added LTSB 2015 (only non-N and not tested so far) and native splash screen to silent mode

v9.04 fixed spelling error in splash pic

v9.01 fixed the KMS detection (will work on activated KMS systems now) amd added silent mode

v8.13 added Messagebox to inform user tool-start-up might need a moment, fixed tool not closing when done via the 'X'

v8.06 changed disabled WU handling to: set to auto, start service, activate, stop service and set back to disabled

v7.99 added last checks and some code cleanup

v7.77 implemented disabled WU handling.


-=Install Notes=-

Run "hwidgen.mk3.exe" -> Click OK -> Wait a moment -> Click on Patch -> Wait for completing activation process -> Succesfully activated!

Enjoy This Release!!

Note: Make sure you've not used any script or software to stop windows update before.

(All Credit Goes To s1ave77)

By:

SeuPirate

Find my releases on:

https://pirates-forum.org/Thread-SeuPirate-Releases

https://thepiratebay.org/user/SeuPirate/

https://1337x.to/user/SeuPirate/

https://katcr.co/user/SeuPirate/uploads/page/