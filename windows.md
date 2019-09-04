# Windows Notes

##
##

### Hotkeys
Ctrl+T > always on top
-shift+click > select multiple items. wenn schon selection: ctrl+click auf das erste, das man hinzufügen möchte, dann ctrl+shift+click auf das letze.
-ctrl+backspace > delete one word at a time
-ctrl+shift+arrow > select one word at a time
-ctrl+home+end > select whole paragraph line
### D

C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar


### Settings

-allow mouse to wake windows OFF
-Change system locale for non-unicode programms > japanese
Performance options / Power settings (Processor Power Mngmt > System Cooling>active)
Admin rights
pagefile size
System and compressed memory
Local Group Policy gpedit.msc
Desktop Icon Settings > hide everything
Ease of Access center > everyhing OFF
-shift+tab umschaltung abschalten...



### Services
**silent with Virtual Disk, Diagnostic System Host, Diagnostic Service Host disabled **

Internet Connection Sharing
Delivery Optimi
Diagnotstic Pol Ho
HD 3DDG
Security Center
Superfetch
Windows Push Notific
WinHTTP



REENABLED SERVICES
HP 3DDG
virtual disk
windo secu cent

FROM MANUAL TO AUTO SERVICS
windows process ac
optimise drives
windows insid wisvc
Distributed Transaction Coordinator
DevQuery Background Discovery Broker
Data Sharing Service
COM+ System Application
Background Intelligent Transfer Service
13.02 reenabled tasks:
ProcessMemoryDiagnosticEvents
silentcleanupdiagnosis

SystemEventsBroker

A form was submitted in the gbk encoding which cannot encode all Unicode characters, so user input may get corrupted. To avoid this problem, the page should be changed so that the form is submitted in the UTF-8 encoding either by changing the encoding of the page itself to UTF-8 or by specifying accept-charset=utf-8 on the form element.




#### Locale
Control Panel\All Control Panel Items\Language\Advanced settings
Change language bar hot keys > unassigned
Control Panel>Indexing Options


Services Disable
*services / components (*"Turn windows components on or off")
*Task Scheduler / Startup
*indexing (evtl.)
Xbox / Windows Defender / Windows Problem Reporting /

Uninstall
Remove all Windows apps using PowerShell with admin rights : Get-AppxPackage -AllUsers | Remove-AppxPackage
Microsoft Wifi / Phone Companion / Games /

Disable P2P updating : Update & Security > Choose how updates are delivered > PCs on my local network

Disable P2P updating : Advanced options>Choose how updates are delivered>Off or PCs on my local network
Disable HomeGroup / services.msc>HomeGroup Listener>Properties>Startup type>Disabled / HomeGroup Provider>Properties>Startup type>Disabled

Accounts : Your info>Sign in with a local account Email & app accounts>remove all Sync your settings>Off

Disable automatic updating via Edit group policy (W10 Pro) : gpedit.msc>Administrative Templates>Windows Components>Windows Update>Configure Automatic Updates>Edit>Enabled / Options>Configure automatic updating>2 - Notify for download and notify for install

Disable automatic updating via Edit group policy (W10 Pro) Alternative : Advanced options>Defer feature updates / Advanced options>Use my sign in info to automatically finish setting up my device after an update.

Set Ethernet as metered : regedit>HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\DefaultMediaCost>Permissions>Advanced>Change>Type Administrators>Check Names>...
...Replace owner on subcontainers and objects>Check>Apply>OK
Select Administrators>Full Control>Check>Apply>OK>Ethernet>2 / WiFi>Advanced options>Metered Connection>On



#### GUI



File Explorer>View>Options>Change folder and search options>Open File Explorer to: This PC
Taskbar>Notification area>Turn system icons on or off>Action Center>Off
Start>Occasionally show suggestions in Start>Off
Colours>Choose your app mode>Dark
File Explorer>View>Options>Change folder and search options>Show recently/frequently used files/folders in Quick access>Uncheck both
Disable Display Scaling

##### Explorer
Here's how to move Libraries to below Favorites... http://winaero.com/blog/how-to-move-libraries-above-this-pc-in-windows-8-1/. I hate having SkyDrive and Homegroup before Computer though so any fix for that would be nice...

Open the Registry editor regedit.
Go to the following key:

HKEY_CLASSES_ROOT\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}

You will see the SortOrderIndex value which is set to 84 (in decimals). Change it to 56 in decimals.
Libraries will now appear directly below Favorites, above This PC, Network, etc. in Windows 8.1



##### Context Menu
HKEY_CLASSES_ROOT\*\shell (genau so mit dem Stern)
Computer\HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit\command
"C:\Program Files\paint.net\PaintDotNet.exe" "%1"
Computer\HKEY_CLASSES_ROOT\SystemFileAssociations\text\shell\edit\command
"C:\Program Files\Sublime Text\sublime_text.exe" "%1"





### Tasks

 

### Peripherals
*disable Panasonic TV in audo mixer
*Mouse > Properties > Power Mngmt > Allow this device OFF
*allow only keyboard to wake
*Set hotkeys to Libraries (in context menu)
*Text services and input languages > Hotkey für Keyboard-Switch ändern/disable
-bei shortcuts einstellen (via properties) ob in maximized, minized etc window starten soll
-Kontextmenü entrümpeln



 
