set sites to {"http://stackoverflow.com", "https://www.google.com", "https://github.com/", "https://rainymood.com/"}
set apps to {"Slack", "iTerm", "Sublime Text", "Spotify"}
repeat with a in apps
    tell application a
        activate
    end tell
end repeat
tell application "Spotify"
    set shuffling to false
    set shuffling to true
    play track "spotify:album:2skvJw7CjGmagv5JDGd3sn"
end tell


if application "Google Chrome" is running then
    tell application "Google Chrome"
        quit
    end tell
end if
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
