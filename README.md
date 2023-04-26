# themecontrol-script
Powershell script for changing system theme color just in two clicks!

## Read this before continuing!
Sadly, this script is not a signed script. That means, by default, you cannot run it directly. To permit the script, you first need to change your Powershell execution policy. Head to [this link](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_signing?view=powershell-7.3#to-permit-signed-scripts-to-run) for more information about how to change the execution policy. But keep in mind, changing the execution policy to a less restrictive one also decreases the security of the device. Always double check before running unsigned scripts, especially from the internet.

## Things to keep in mind
This script uses *Windows Registery* to change the theme color and uses an environment variable to keep track of it. **But it doesn't change anything else.** It is effectively same as changing the theme color from the *Personilization* settings. Also, some programs may not change color totally after running the script. That is normal. They will change after being refreshed, or re-focused by clicking on them.

## How to use?
After changing the execution policy, you can run it by *right-clicking* and pressing *Run with Powershell*. Every time you run the script, it will toggle between light and dark color themes. But to make things a little bit more easier, you can create a shortcut to run the script. You can put this shortcut to your desktop, and just *double-click* on it to change the system color. But it takes a bit of extra work.

### Creating a shortcut for a script
1. Create an empty shortcut. To do this, right-click the location you desire, go into *New* and select *Shortcut*.
2. Then type to following with changing the location of the script ```powershell -Command " C:\Location\of\script\themecontrol.ps1"```.
3. Then create the shortcut! You can give it any icon you want from the *Properties* menu.

## Things to do in future
1. Find a way to refresh programs after toggling with the script.
2. Look for other ways to implement the system.
3. Maybe compile the script into an executable and release that way?
4. Add support for other Windows system programs, such as *Task Manager*.
