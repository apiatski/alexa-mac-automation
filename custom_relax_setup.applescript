set sites to {"https://facebook.com", "https://www.netflix.com", "https://reddit.com", "https://youtube.com"}

set apps to {"Slack", "iTerm", "Sublime Text", "Spotify", "Google Chrome"}
repeat with a in apps
    if application a is running then
        tell application a
            quit
        end tell
    end if
end repeat

tell application "Google Chrome"
    activate
    make new window
    tell window 1
        repeat with i from 1 to count of sites
            set site to item i of sites
            make new tab with properties {URL:site}
        end repeat
        delete tab 1
    end tell
end tell