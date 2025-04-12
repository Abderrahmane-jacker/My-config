$PSVersionTable.PSEdition -ne 'Core' | Out-Null

oh-my-posh init pwsh --config 'C:\Users\abdo\.config\ohmyposh\1_shell.omp.json' | Invoke-Expression

# terminal icons
Import-Module -Name Terminal-Icons

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineKeyHandler -key Shift+Tab -Function Complete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# aliases
Set-Alias -Name c -Value clear