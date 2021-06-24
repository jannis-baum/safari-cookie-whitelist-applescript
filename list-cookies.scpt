tell application "System Events"
    tell application process "Safari"
        set frontmost to true
        keystroke "," using command down
        delay 0.1
        tell window 1
            click button "Privacy" of toolbar 1 of it
            click button "Manage Website Data…" of group 1 of group 1
        end tell
        tell window "Privacy" to tell sheet 1
            # wait for cookies to load
            repeat while length of ((entire contents of table 1 of scroll area 1) as list) = 1
            end repeat
            log entire contents of (table 1 of scroll area 1) as list
        end tell
    end tell
end tell

