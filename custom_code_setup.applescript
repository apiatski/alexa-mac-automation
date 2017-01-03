set sites to {"http://stackoverflow.com", "https://www.google.com", "https://github.com/"}
set apps to {"Slack", "iTerm"}
repeat with a in apps 
    tell application a 
        activate
    end tell
end repeat
tell application "Google Chrome"
    set chromewindows to every window
    repeat with chromewindow in chromewindows
        set windowtabs to every tab of chromewindow
        repeat with windowtab in windowtabs
            tell windowtab
                delete
            end tell
        end repeat
    end repeat
    make new window
    activate
    tell window 1
        repeat with i from 1 to count of sites
            set site to item i of sites
            make new tab with properties {URL:site}
        end repeat
        delete tab 1
    end tell
end tell