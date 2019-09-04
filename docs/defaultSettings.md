# Windows Setup Information

## Settings

- allow mouse to wake windows OFF
- Change system locale for non-unicode programms > japanese
Performance options / Power settings (Processor Power Mngmt > System Cooling>active)
Admin rights
pagefile size
System and compressed memory
Local Group Policy gpedit.msc
Desktop Icon Settings > hide everything

 


### Services
 
 
### Locale
Control Panel\All Control Panel Items\Language\Advanced settings
Change language bar hot keys > unassigned
Control Panel>Indexing Options

Accounts : Your info>Sign in with a local account Email & app accounts>remove all Sync your settings>Off


Services Disable
*services / components (*"Turn windows components on or off")
*Task Scheduler / Startup
*indexing (evtl.)
Xbox / Windows Defender / Windows Problem Reporting /

Uninstall

Disable HomeGroup / services.msc>HomeGroup Listener>Properties>Startup type>Disabled / HomeGroup Provider>Properties>Startup type>Disabled



### Updating
Disable automatic updating via Edit group policy (W10 Pro) : 
gpedit.msc>Administrative Templates>Windows Components>Windows Update>Configure Automatic Updates>Edit>Enabled / Options>Configure automatic updating>2 - Notify for download and notify for install

Disable automatic updating via Edit group policy (W10 Pro) Alternative : 
Advanced options>Defer feature updates / Advanced options>Use my sign in info to automatically finish setting up my device after an update.


## GUI

File Explorer>View>Options>Change folder and search options>Open File Explorer to: This PC
Taskbar>Notification area>Turn system icons on or off>Action Center>Off
Start>Occasionally show suggestions in Start>Off
Colours>Choose your app mode>Dark
File Explorer>View>Options>Change folder and search options>Show recently/frequently used files/folders in Quick access>Uncheck both
Disable Display Scaling

### Explorer
Here's how to move Libraries to below Favorites... http://winaero.com/blog/how-to-move-libraries-above-this-pc-in-windows-8-1/. I hate having SkyDrive and Homegroup before Computer though so any fix for that would be nice...

Open the Registry editor regedit.
Go to the following key:

HKEY_CLASSES_ROOT\CLSID\{031E4825-7B94-4dc3-B131-E946B44C8DD5}

You will see the SortOrderIndex value which is set to 84 (in decimals). Change it to 56 in decimals.
Libraries will now appear directly below Favorites, above This PC, Network, etc. in Windows 8.1

### TaskBar
C:\Users\Administrator\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\User Pinned\TaskBar



### Context Menu
clean up context menu

HKEY_CLASSES_ROOT\*\shell (genau so mit dem Stern)
Computer\HKEY_CLASSES_ROOT\SystemFileAssociations\image\shell\edit\command
"C:\Program Files\paint.net\PaintDotNet.exe" "%1"
Computer\HKEY_CLASSES_ROOT\SystemFileAssociations\text\shell\edit\command
"C:\Program Files\Sublime Text\sublime_text.exe" "%1"



 
 

### Peripherals
- disable Panasonic TV in audio mixer
- Mouse > Properties > Power Mngmt > Allow this device OFF
- allow only keyboard to wake

 


