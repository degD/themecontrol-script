
# themecontrol v1.1

# A script to toggle dark theme from the command line
# To achieve this goal, it creates a new environment variable that stores the current color theme
# Everytime the script runs, it changes this variable
# And the toggles dark theme on and off

# If THEMECOLOR environment variable haven't created, create it
$themecolor = [Environment]::GetEnvironmentVariable("THEMECOLOR", "User")
if ($themecolor -eq "")
{
    [Environment]::SetEnvironmentVariable("THEMECOLOR", "light")
    Write-Debug "ENV THEMECOLOR NOT FOUND, SO SET IT FOR THE CURRENT USER FIRST"
}

# Now everytime this script has run, change theme colors
if ($themecolor -eq "light") # If light, turn dark
{
    [Environment]::SetEnvironmentVariable("THEMECOLOR", "dark", "User")
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force
    Write-Debug "COLOR WAS LIGHT, NOW THE COLOR IS DARK"
}
else # If dark, turn light
{
    [Environment]::SetEnvironmentVariable("THEMECOLOR", "light", "User")
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 1 -Type Dword -Force
    Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 1 -Type Dword -Force
    Write-Debug "COLOR WAS DARK, NOW THE COLOR IS LIGHT"
}
